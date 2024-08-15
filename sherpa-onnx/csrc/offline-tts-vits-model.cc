// sherpa-onnx/csrc/offline-tts-vits-model.cc
//
// Copyright (c)  2023  Xiaomi Corporation

#include "sherpa-onnx/csrc/offline-tts-vits-model.h"

#include <algorithm>
#include <string>
#include <utility>
#include <vector>
#include <iostream>
#include "cvi-utils.h"
#include "cviruntime.h"
#include "onnx-to-cvi.h"
#include "sherpa-onnx/csrc/macros.h"
#include "sherpa-onnx/csrc/onnx-utils.h"
#include "sherpa-onnx/csrc/session.h"

namespace sherpa_onnx {

class OfflineTtsVitsModel::Impl {
 public:
  explicit Impl(const OfflineTtsModelConfig &config)
      : config_(config),
        env_(ORT_LOGGING_LEVEL_WARNING),
        sess_opts_(GetSessionOptions(config)),
        allocator_{} {
    //auto buf = ReadFile(config.vits.model);
    Init(config.vits.model);
  }

#if __ANDROID_API__ >= 9
  Impl(AAssetManager *mgr, const OfflineTtsModelConfig &config)
      : config_(config),
        env_(ORT_LOGGING_LEVEL_WARNING),
        sess_opts_(GetSessionOptions(config)),
        allocator_{} {
    auto buf = ReadFile(mgr, config.vits.model);
    Init(buf.data(), buf.size());
  }
#endif

  Ort::Value Run(Ort::Value x, int64_t sid, float speed) {
    if (meta_data_.is_piper || meta_data_.is_coqui) {
      SHERPA_ONNX_LOGE("RUN");
      return RunVitsPiperOrCoqui(std::move(x), sid, speed);
    }

    return RunVits(std::move(x), sid, speed);
  }

  const OfflineTtsVitsModelMetaData &GetMetaData() const { return meta_data_; }

 private:
  void Init(const std::string &model_path) {
    CVI_NN_RegisterModel(model_path.c_str(), &sess_);
    GetInputOutPutInfo(sess_);
    meta_data_.sample_rate = 16000;
    meta_data_.add_blank = 1;
    meta_data_.num_speakers = 187;
    meta_data_.punctuations = ", . : ; ! ? ， 。 ： ； ！ ？ 、";
    meta_data_.language = "Chinese";
    meta_data_.voice = "";
    meta_data_.frontend = "";
    meta_data_.jieba = 1;
    std::string comment;
    comment = "hf-vits-models-fanchen-C";

    if (comment.find("piper") != std::string::npos) {
      meta_data_.is_piper = true;
    }

    if (comment.find("coqui") != std::string::npos) {
      meta_data_.is_coqui = true;
    }

    if (comment.find("icefall") != std::string::npos) {
      meta_data_.is_icefall = true;
    }
    SHERPA_ONNX_LOGE("Init OVER");
  }

  Ort::Value RunVitsPiperOrCoqui(Ort::Value x, int64_t sid, float speed) {
    auto memory_info =
        Ort::MemoryInfo::CreateCpu(OrtDeviceAllocator, OrtMemTypeDefault);

    std::vector<int64_t> x_shape = x.GetTensorTypeAndShapeInfo().GetShape();
    if (x_shape[0] != 1) {
      SHERPA_ONNX_LOGE("Support only batch_size == 1. Given: %d",
                       static_cast<int32_t>(x_shape[0]));
      exit(-1);
    }

    int64_t len = x_shape[1];
    int64_t len_shape = 1;

    Ort::Value x_length =
        Ort::Value::CreateTensor(memory_info, &len, 1, &len_shape, 1);

    float noise_scale = config_.vits.noise_scale;
    float length_scale = config_.vits.length_scale;
    float noise_scale_w = config_.vits.noise_scale_w;

    if (speed != 1 && speed > 0) {
      length_scale = 1. / speed;
    }
    std::array<float, 3> scales = {noise_scale, length_scale, noise_scale_w};

    int64_t scale_shape = 3;

    Ort::Value scales_tensor = Ort::Value::CreateTensor(
        memory_info, scales.data(), scales.size(), &scale_shape, 1);

    int64_t sid_shape = 1;
    Ort::Value sid_tensor =
        Ort::Value::CreateTensor(memory_info, &sid, 1, &sid_shape, 1);

    int64_t lang_id_shape = 1;
    int64_t lang_id = 0;
    Ort::Value lang_id_tensor =
        Ort::Value::CreateTensor(memory_info, &lang_id, 1, &lang_id_shape, 1);

    std::vector<Ort::Value> inputs;
    inputs.reserve(5);
    inputs.push_back(std::move(x));
    inputs.push_back(std::move(x_length));
    inputs.push_back(std::move(scales_tensor));
    // get input / output tensors
    CVI_TENSOR *input_tensors, *output_tensors;
    int32_t input_num, output_num;
    CVI_NN_GetInputOutputTensors(sess_, &input_tensors, &input_num,
                               &output_tensors, &output_num);
    printf("[encoder] input num: %d, output num: %d\n", input_num, output_num);
    if (input_num >= 4) {
      inputs.push_back(std::move(sid_tensor));
    }

    if (input_num >= 5) {
      inputs.push_back(std::move(lang_id_tensor));
    }

    LoadOrtValuesToCviTensors(inputs, input_tensors, input_num);
    CVI_NN_Forward(sess_, input_tensors, input_num, output_tensors,
                 output_num);
    /*刘家骏*/
    // const int64_t* data = out[0].GetTensorMutableData<int64_t>();
    // size_t data_size = out[0].GetTensorTypeAndShapeInfo().GetElementCount();
    // for (size_t i = 0; i < data_size; ++i) {
    //     std::cout << data[i] << ",";
    // }
    /*刘家骏*/
    // return std::move(out[0]);
    return std::move(GetOrtValueFromCviTensor(output_tensors[0]));
  }

  Ort::Value RunVits(Ort::Value x, int64_t sid, float speed) {
    SHERPA_ONNX_LOGE("RunVits");
    auto memory_info =
        Ort::MemoryInfo::CreateCpu(OrtDeviceAllocator, OrtMemTypeDefault);

    std::vector<int64_t> x_shape = x.GetTensorTypeAndShapeInfo().GetShape();
    if (x_shape[0] != 1) {
      SHERPA_ONNX_LOGE("Support only batch_size == 1. Given: %d",
                       static_cast<int32_t>(x_shape[0]));
      exit(-1);
    }

    int64_t len = x_shape[1];
    int64_t len_shape = 1;

    Ort::Value x_length =
        Ort::Value::CreateTensor(memory_info, &len, 1, &len_shape, 1);

    int64_t scale_shape = 1;
    float noise_scale = config_.vits.noise_scale;
    float length_scale = config_.vits.length_scale;
    float noise_scale_w = config_.vits.noise_scale_w;

    if (speed != 1 && speed > 0) {
      length_scale = 1. / speed;
    }

    Ort::Value noise_scale_tensor =
        Ort::Value::CreateTensor(memory_info, &noise_scale, 1, &scale_shape, 1);

    Ort::Value length_scale_tensor = Ort::Value::CreateTensor(
        memory_info, &length_scale, 1, &scale_shape, 1);

    Ort::Value noise_scale_w_tensor = Ort::Value::CreateTensor(
        memory_info, &noise_scale_w, 1, &scale_shape, 1);

    Ort::Value sid_tensor =
        Ort::Value::CreateTensor(memory_info, &sid, 1, &scale_shape, 1);

    std::vector<Ort::Value> inputs;
    inputs.reserve(6);
    inputs.push_back(std::move(x));
    inputs.push_back(std::move(x_length));
    inputs.push_back(std::move(noise_scale_tensor));
    inputs.push_back(std::move(length_scale_tensor));
    inputs.push_back(std::move(noise_scale_w_tensor));
    SHERPA_ONNX_LOGE("Pre");
    // get input / output tensors
    CVI_TENSOR *input_tensors, *output_tensors;
    int32_t input_num, output_num;
    CVI_NN_GetInputOutputTensors(sess_, &input_tensors, &input_num,
                               &output_tensors, &output_num);
    SHERPA_ONNX_LOGE("Current model is in CVI_NN_GetInputOutputTensors");
    printf("input num: %d, output num: %d\n", input_num, output_num);
    if (input_num == 6) {
      inputs.push_back(std::move(sid_tensor));
    }
    LoadOrtValuesToCviTensors(inputs, input_tensors, input_num);
    SHERPA_ONNX_LOGE("Current model is in LoadOrtValuesToCviTensors");
    float* liu = (float *)CVI_NN_TensorPtr(&input_tensors[1]);
    *liu = input_tensors[0].count;
    size_t begin = inputs[0].GetTensorTypeAndShapeInfo().GetElementCount();
    uint16_t* data = (uint16_t *)CVI_NN_TensorPtr(&input_tensors[0]);
    for (size_t i = begin; i < input_tensors[0].count; ++i){
      data[i] = 49;}
    std::cout<<"niubi"<<std::endl;
    CVI_NN_Forward(sess_, input_tensors, input_num, output_tensors,
                 output_num);
    SHERPA_ONNX_LOGE("Current model is in CVI_NN_Forward");
    return std::move(GetOrtValueFromCviTensor(output_tensors[0]));
  }

 private:
  OfflineTtsModelConfig config_;
  Ort::Env env_;
  Ort::SessionOptions sess_opts_;
  Ort::AllocatorWithDefaultOptions allocator_;

  CVI_MODEL_HANDLE sess_ = nullptr;

  std::vector<std::string> input_names_;
  std::vector<const char *> input_names_ptr_;

  std::vector<std::string> output_names_;
  std::vector<const char *> output_names_ptr_;

  OfflineTtsVitsModelMetaData meta_data_;
};

OfflineTtsVitsModel::OfflineTtsVitsModel(const OfflineTtsModelConfig &config)
    : impl_(std::make_unique<Impl>(config)) {}

#if __ANDROID_API__ >= 9
OfflineTtsVitsModel::OfflineTtsVitsModel(AAssetManager *mgr,
                                         const OfflineTtsModelConfig &config)
    : impl_(std::make_unique<Impl>(mgr, config)) {}
#endif

OfflineTtsVitsModel::~OfflineTtsVitsModel() = default;

Ort::Value OfflineTtsVitsModel::Run(Ort::Value x, int64_t sid /*=0*/,
                                    float speed /*= 1.0*/) {
  return impl_->Run(std::move(x), sid, speed);
}

const OfflineTtsVitsModelMetaData &OfflineTtsVitsModel::GetMetaData() const {
  return impl_->GetMetaData();
}

}  // namespace sherpa_onnx
