#!/usr/bin/env bash
set -e
set -x

# Use specified checkpoint path, otherwise, default value
ckpt=${1:-"prs-eth/marigold-v1-0"}
subfolder=${2:-"eval"}
base_data_dir=${3:-"/data"}
output_dir=${4:-"/home/output"}
dataset_txt_path=${5:-"/mnt/GrandTour/test_1.txt"}

python infer.py  \
    --checkpoint $ckpt \
    --seed 1234 \
    --base_data_dir ${base_data_dir} \
    --denoise_steps 50 \
    --ensemble_size 10 \
    --processing_res 0 \
    --dataset_config config/dataset/data_grandtour_val.yaml \
    --output_dir ${output_dir}/${subfolder}/grandtour_val/prediction \
    --dataset_txt_path ${dataset_txt_path}


# bash /home/grand_tour_depth_benchmark/third_parties/Marigold_grandtour/script/eval/61_infer_grandtour.sh "" "" "/home/output" "" "/mnt/GrandTour/test_1.txt"