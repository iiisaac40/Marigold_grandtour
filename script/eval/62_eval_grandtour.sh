#!/usr/bin/env bash
set -e
set -x

subfolder=${1:-"eval"}
base_data_dir=${2:-"/data"}
output_dir=${3:-"/home/output"}
dataset_txt_path=${4:-"/mnt/GrandTour/test_1.txt"}


python eval.py \
    --base_data_dir ${base_data_dir} \
    --dataset_config config/dataset/data_grandtour_val.yaml \
    --alignment least_square \
    --prediction_dir ${output_dir}/${subfolder}/grandtour_val/prediction \
    --output_dir ${output_dir}/${subfolder}/grandtour_val/eval_metric \
    --dataset_txt_path ${dataset_txt_path}
