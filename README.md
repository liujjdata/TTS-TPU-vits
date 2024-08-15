# TTS语音转文字 Demo （using vits）
- 话不多说先展示个效果吧
- [1-1.wav](/Test-wav/1-1.wav) [1-2.mov](/Test-wav/1-2.mov) demo1文本：峰会开始喽，现场好多人啊！
- [2-1.wav](/Test-wav/2-1.wav) [2-2.wav](/Test-wav/2-2.wav) demo2文本：大家好，我是算能科技的小音。
- [3-1.wav](/Test-wav/3-1.wav) [3-2.wav](/Test-wav/3-2.wav) demo3文本：各位大佬们今天齐聚杭州峰会。

## 1. 获取代码
执行`git clone https://github.com/liujjdata/TTS-TPU-vits.git`。

## 2. 环境准备
- 获取docker镜像，创建容器并进入：`docker run --privileged --name mytpudev -v $PWD:/workspace -it sophgo/tpuc_dev:latest`。执行完这一命令后，会进入docker，后续步骤都在`mytpudev`容器中执行。

* 若是在x86机器上模拟运行，需要在docker内执行。按以下步骤操作：
 1. 获取`cvitek_tpu_sdk_x86`，然后执行`source cvitek_tpu_sdk_x86/envs_tpu_sdk.sh`。
 2. 设置TPU SDK路径，`export TPU_SDK_PATH=/workspace/cvitek_tpu_sdk_x86`。

* 若是在板子上实测，需要在x86机器上完成交叉编译，按以下步骤操作：
 1. 获取cvitek_tpu_sdk，然后执行`source cvitek_tpu_sdk/envs_tpu_sdk.sh`，这里的cvitek_tpu_sdk是可以在板子上运行cviruntime。
 2. 下载交叉编译工具 wget https://occ-oss-prod.oss-cn-hangzhou.aliyuncs.com/resource//1705395627867/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1-20240115.tar.gz 。
 3. 设置环境变量 export PATH=/workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin:$PATH。[获取riscv-gnu-toolchain并设置环境变量](https://k2-fsa.github.io/sherpa/onnx/install/riscv64-embedded-linux.html#install-toolchain)，注意这里帖子是2.6.1版本。
 4. 设置TPU SDK路径，`export TPU_SDK_PATH=/workspace/cvitek_tpu_sdk`。

## 3.1 在x86机器模拟运行，编译在docker的sample

\* 若要与麦克风交互，安装ALSA音频框架
```sh
sudo apt-get update -y
sudo apt-get install -y alsa-utils libasound2-dev
```

docker内执行`cd TTS-TPU-vits && mkdir build && cd build`。
若要在X86机器模拟运行，执行：
```sh
cmake -DCMAKE_BUILD_TYPE=Release -DTPU_SDK_PATH=$TPU_SDK_PATH .. # X86机器模拟运行
make clean && make -j6
```
## 3.2 若要在板子上运行，alsa库和项目源码、依赖都需交叉编译，执行
```sh
bash build-riscv64-linux-gnu.sh # 在X86上交叉编译
```
编译完成后，会在`build-riscv64-linux-gnu/bin`目录得到多个可执行文件，`sherpa-onnx-offline-tts`是tts的可执行文件。

## 4. 运行
- [下载cvimodel模型和token文件](https://drive.google.com/drive/folders/10X38V8oKOC2nrDw-9Aw9sKk7gNYCkXoV?usp=sharing)
- TTS文字转语音：命令行执行下列命令，
  ```sh
  ./build-riscv64-linux-gnu/bin/sherpa-onnx-offline-tts \
  --vits-model=./tts_ch_100.cvimodel \
  --vits-dict-dir=./vits-zh-hf-fanchen-C/dict \
  --vits-lexicon=./vits-zh-hf-fanchen-C/lexicon.txt \
  --vits-tokens=./vits-zh-hf-fanchen-C/tokens.txt \
  --vits-noise-scale=0  \
  --vits-noise-scale-w=0 \
  --vits-length-scale=1 \
  --sid=0 \
  --output-filename="./value-2x.wav" \
  "大家好，我是算能科技的小音。"
  ```
--vits-length-scale参数是对语速的控制，值越大语速越慢。
--sid参数是说话人的选择，模型一共有187个说话人。
# Introduction

This repository supports running the following functions **locally**

  - Speech-to-text (i.e., ASR)
  - Text-to-speech (i.e., TTS)
  - Speaker identification

on the following platforms and operating systems:

  - Linux, macOS, Windows
  - Android
  - iOS
  - Raspberry Pi
  - etc

# Useful links

- Documentation: https://k2-fsa.github.io/sherpa/onnx/
- APK for the text-to-speech engine: https://k2-fsa.github.io/sherpa/onnx/tts/apk-engine.html
- APK for speaker identification: https://k2-fsa.github.io/sherpa/onnx/speaker-identification/apk.html

# How to reach us

Please see
https://k2-fsa.github.io/sherpa/social-groups.html
for 新一代 Kaldi **微信交流群** and **QQ 交流群**.