# TTS文字转语音 Demo （using vits）
- 端侧芯片上的第一个可用的语音生成模型！！！
- 话不多说先展示个效果吧(支持多说话人)
- [1-1.wav](/Test-wav/1-1.wav) [1-2.wav](/Test-wav/1-2.wav) demo1文本：峰会开始喽，现场好多人啊！
- [2-1.wav](/Test-wav/2-1.wav) [2-2.wav](/Test-wav/2-2.wav) demo2文本：大家好，我是算能科技的小音。
- [3-1.wav](/Test-wav/3-1.wav) [3-2.wav](/Test-wav/3-2.wav) demo3文本：各位大佬们今天齐聚杭州峰会。

## 1. 获取代码
执行`git clone https://github.com/liujjdata/TTS-TPU-vits.git`。
- TTS部署的主体代码在sherpa-onnx/csrc文件下
- 运行cvimodel需要对应版本的cviruntime！（这里的cviruntime我做了一些改动，待开源）
## 2. 环境准备
- 获取docker镜像，创建容器并进入：`docker run --privileged --name mytpudev -v $PWD:/workspace -it sophgo/tpuc_dev:latest`。执行完这一命令后，会进入docker，后续步骤都在`mytpudev`容器中执行。

* 若是在x86机器上模拟运行，需要在docker内执行。按以下步骤操作：
 1. 获取`cvitek_tpu_sdk_x86`，然后执行`source cvitek_tpu_sdk_x86/envs_tpu_sdk.sh`。
 2. 设置TPU SDK路径，`export TPU_SDK_PATH=/workspace/cvitek_tpu_sdk_x86`。

* 若是在板子上实测，需要在x86机器上完成交叉编译，按以下步骤操作：
 1. 获取cvitek_tpu_sdk，然后执行`source cvitek_tpu_sdk/envs_tpu_sdk.sh`，这里的cvitek_tpu_sdk是可以在板子上运行cviruntime。
 2. 下载交叉编译工具 wget https://occ-oss-prod.oss-cn-hangzhou.aliyuncs.com/resource//1705395627867/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1-20240115.tar.gz 。
 3. 设置环境变量 `export PATH=/workspace/Xuantie-900-gcc-linux-5.10.4-glibc-x86_64-V2.8.1/bin:$PATH`。[获取riscv-gnu-toolchain并设置环境变量](https://k2-fsa.github.io/sherpa/onnx/install/riscv64-embedded-linux.html#install-toolchain)，注意这里帖子是2.6.1版本。
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
- TTS的cvimodel模型和cviruntime即将开源，尽情期待！
- TTS文字转语音：命令行执行下列命令
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
# How to reach me
- my email:liujj15972756175@163.com

Please see
https://k2-fsa.github.io/sherpa/social-groups.html
for 新一代 Kaldi **微信交流群** and **QQ 交流群**.