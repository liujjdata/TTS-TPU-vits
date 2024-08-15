#!/usr/bin/env python3
import sys

sys.path.insert(0, "VITS-fast-fine-tuning")


import os
from typing import List

from pypinyin import load_phrases_dict, phrases_dict, pinyin_dict

new_phrases = {
    "行长": [["háng"], ["zhǎng"]],
    "还我": [["huán"], ["wǒ"]],
}

load_phrases_dict(new_phrases)

import utils
from text import _clean_text


def get_phones(w, hps) -> List[str]:
    w = f"[ZH]{w}[ZH]"
    phones = _clean_text(w, hps.data.text_cleaners)
    return list(phones)[:-1]


def generate_tokens(symbols):
    tokens = "tokens.txt"
    symbol_to_id = {s: i for i, s in enumerate(symbols)}
    with open(tokens, "w", encoding="utf-8") as f:
        for s, i in symbol_to_id.items():
            f.write(f"{s} {i}\n")
    print(f"Generated {tokens}")


def generate_lexicon(hps):
    symbol_to_id = {s: i for i, s in enumerate(hps.symbols)}

    words = list()

    phrases = phrases_dict.phrases_dict

    word_dict = pinyin_dict.pinyin_dict
    for key in word_dict:
        if not (0x4E00 <= key <= 0x9FFF):
            continue
        w = chr(key)
        words.append(w)

    for key in phrases:
        words.append(key)

    for key in new_phrases:
        words.append(key)

    word2phone = []
    for w in words:
        phones = get_phones(w, hps)
        oov = False
        for p in phones:
            if p not in symbol_to_id:
                print(f"{p} not in symbol_to_id, skip {w}")
                oov = True
                break
        if oov:
            print(f"skip {w}")
            continue

        word2phone.append([w, " ".join(phones)])

    with open("lexicon.txt", "w", encoding="utf-8") as f:
        for w, phones in word2phone:
            f.write(f"{w} {phones}\n")
    print("Generated lexicon.txt")


def main():
    name = os.environ.get("NAME", None)
    if not name:
        print("Please provide the environment variable NAME")
        return

    print("name", name)
    if name == "C":
        config_path = "G_C.json"
    elif name == "ZhiHuiLaoZhe":
        config_path = "G_lkz_lao_new_new1_latest.json"
    elif name == "ZhiHuiLaoZhe_new":
        config_path = "G_lkz_unity_onnx_new1_latest.json"
    elif name == "unity":
        config_path = "G_wnj_latest.json"
    else:
        config_path = f"G_{name}_latest.json"

    print(config_path)

    hps = utils.get_hparams_from_file(config_path)
    print(type(hps), hps)
    generate_tokens(hps.symbols)
    generate_lexicon(hps)


if __name__ == "__main__":
    main()
