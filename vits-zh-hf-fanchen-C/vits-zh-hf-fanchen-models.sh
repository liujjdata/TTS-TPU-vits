#!/usr/bin/env bash

set -ex

echo "name: $NAME"

pip install unidecode onnx onnxruntime pyopenjtalk jamo \
  Cython scipy \
  jieba inflect \
  ko_pron pypinyin cn2an indic_transliteration eng_to_ipa num_thai \
  torch==1.13.0+cpu -f https://download.pytorch.org/whl/torch_stable.html

git clone https://github.com/Plachtaa/VITS-fast-fine-tuning
pushd VITS-fast-fine-tuning/monotonic_align

python3 setup.py build

ls -lh build/
ls -lh build/lib*/
ls -lh build/lib*/*/

cp build/lib*/monotonic_align/core*.so .

sed -i.bak s/.monotonic_align.core/.core/g ./__init__.py
git diff

popd

if [[ $NAME == "C" ]]; then
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/zh/G_C.json
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/zh/G_C.pth
elif [[ $NAME == "ZhiHuiLaoZhe" ]]; then
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/ZhiHuiLaoZhe/G_lkz_lao_new_new1_latest.json
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/ZhiHuiLaoZhe/G_lkz_lao_new_new1_latest.pth
elif [[ $NAME == "ZhiHuiLaoZhe_new" ]]; then
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/ZhiHuiLaoZhe_new/G_lkz_unity_onnx_new1_latest.json
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/ZhiHuiLaoZhe_new/G_lkz_unity_onnx_new1_latest.pth
elif [[ $NAME == "unity" ]]; then
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/unity/G_wnj_latest.json
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/unity/G_wnj_latest.pth
else
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/G_${NAME}_latest.json
  wget -q https://huggingface.co/spaces/lkz99/tts_model/resolve/main/G_${NAME}_latest.pth
fi

ls -lh

./generate-lexicon-zh-hf-fanchen-models.py
./export-onnx-zh-hf-fanchen-models.py

ls -lh

wc -l lexicon.txt
head -n100 lexicon.txt
echo "--------------------"
tail -n100 lexicon.txt

echo "--------------------"

head -n100 tokens.txt
