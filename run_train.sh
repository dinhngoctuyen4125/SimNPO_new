#!/bin/bash

/home/ritsu/miniconda3/envs/simnpo/bin/python SimNPO.py \
    --model_name "codellama/CodeLlama-7b-hf" \
    --file_path "../Data-Collection/codellama/D_forget.json" \
    --output_dir "./outputs/simnpo_checkpoints" \
    --final_model_dir "./outputs/simnpo_final" \
    --batch_size 4 \
    --gradient_accumulation_steps 4 \
    --lr 1e-5 \
    --beta 1.0 \
    --gamma 1.0 \
    --max_steps 100 \
    --num_train_epochs 3 \
    --max_length 2048 \
    --weight_decay 0.01
