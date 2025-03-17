#!/usr/bin/env bash
set -e
set -x

# Use specified checkpoint path, otherwise, default value
ckpt=${1:-"prs-eth/marigold-v1-0"}
subfolder=${2:-"eval"}
base_data_dir=${3:-"/data"}
output_dir=${4:-"/home/output"}

python infer.py  \
    --checkpoint $ckpt \
    --seed 1234 \
    --base_data_dir ${base_data_dir} \
    --denoise_steps 50 \
    --ensemble_size 10 \
    --processing_res 0 \
    --dataset_config config/dataset/data_grandtour_val.yaml \
    --output_dir ${output_dir}/${subfolder}/grandtour_val/prediction \
