#!/usr/bin/env python3

import sys

sys.path.insert(0, "VITS-fast-fine-tuning")

import os
from pathlib import Path
from typing import Any, Dict

import onnx
import torch
import utils
from models import SynthesizerTrn


class OnnxModel(torch.nn.Module):
    def __init__(self, model: SynthesizerTrn):
        super().__init__()
        self.model = model

    def forward(
        self,
        x,
        x_lengths,
        noise_scale=1,
        length_scale=1,
        noise_scale_w=1.0,
        sid=0,
        max_len=None,
    ):
        return self.model.infer(
            x=x,
            x_lengths=x_lengths,
            sid=sid,
            noise_scale=noise_scale,
            length_scale=length_scale,
            noise_scale_w=noise_scale_w,
            max_len=max_len,
        )[0]


def add_meta_data(filename: str, meta_data: Dict[str, Any]):
    """Add meta data to an ONNX model. It is changed in-place.

    Args:
      filename:
        Filename of the ONNX model to be changed.
      meta_data:
        Key-value pairs.
    """
    model = onnx.load(filename)
    while len(model.metadata_props):
        model.metadata_props.pop()
    for key, value in meta_data.items():
        meta = model.metadata_props.add()
        meta.key = key
        meta.value = str(value)

    onnx.save(model, filename)


@torch.no_grad()
def main():
    name = os.environ.get("NAME", None)
    if not name:
        print("Please provide the environment variable NAME")
        return

    print("name", name)

    if name == "C":
        model_path = "G_C.pth"
        config_path = "G_C.json"
    elif name == "ZhiHuiLaoZhe":
        model_path = "G_lkz_lao_new_new1_latest.pth"
        config_path = "G_lkz_lao_new_new1_latest.json"
    elif name == "ZhiHuiLaoZhe_new":
        model_path = "G_lkz_unity_onnx_new1_latest.pth"
        config_path = "G_lkz_unity_onnx_new1_latest.json"
    elif name == "unity":
        model_path = "G_wnj_latest.pth"
        config_path = "G_wnj_latest.json"
    else:
        model_path = f"G_{name}_latest.pth"
        config_path = f"G_{name}_latest.json"

    print(name, model_path, config_path)
    hps = utils.get_hparams_from_file(config_path)
    net_g = SynthesizerTrn(
        len(hps.symbols),
        hps.data.filter_length // 2 + 1,
        hps.train.segment_size // hps.data.hop_length,
        n_speakers=hps.data.n_speakers,
        **hps.model,
    )
    _ = net_g.eval()
    _ = utils.load_checkpoint(model_path, net_g, None)

    x = torch.randint(low=1, high=50, size=(50,), dtype=torch.int64)
    x = x.unsqueeze(0)

    x_length = torch.tensor([x.shape[1]], dtype=torch.int64)
    noise_scale = torch.tensor([1], dtype=torch.float32)
    length_scale = torch.tensor([1], dtype=torch.float32)
    noise_scale_w = torch.tensor([1], dtype=torch.float32)
    sid = torch.tensor([0], dtype=torch.int64)

    model = OnnxModel(net_g)

    opset_version = 13

    filename = f"vits-zh-hf-fanchen-{name}.onnx"

    torch.onnx.export(
        model,
        (x, x_length, noise_scale, length_scale, noise_scale_w, sid),
        filename,
        opset_version=opset_version,
        input_names=[
            "x",
            "x_length",
            "noise_scale",
            "length_scale",
            "noise_scale_w",
            "sid",
        ],
        output_names=["y"],
        dynamic_axes={
            "x": {0: "N", 1: "L"},  # n_audio is also known as batch_size
            "x_length": {0: "N"},
            "y": {0: "N", 2: "L"},
        },
    )
    meta_data = {
        "model_type": "vits",
        "comment": f"hf-vits-models-fanchen-{name}",
        "language": "Chinese",
        "jieba": 1,
        "add_blank": int(hps.data.add_blank),
        "n_speakers": int(hps.data.n_speakers),
        "sample_rate": hps.data.sampling_rate,
        "punctuation": ", . : ; ! ? ， 。 ： ； ！ ？ 、",
    }
    print("meta_data", meta_data)
    add_meta_data(filename=filename, meta_data=meta_data)


if __name__ == "__main__":
    main()
