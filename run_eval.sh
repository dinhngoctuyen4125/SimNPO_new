#!/bin/bash

/home/ritsu/miniconda3/envs/simnpo/bin/python forget_quality.py \
    --model_path "HuyTran1301/SimNPO_Codellama" \
    --input_file "../Data-Collection/codellama/D_test.json" \
    --output_dir "./results/SimNPO_Codellama" \
    --batch_size 32 \
    --max_new_tokens 300 \
    --temperature 0.0 \
    --top_p 0.8 \
    --max_prompt_length 1024
