#!/bin/bash

#SBATCH --job-name=simnpo_eval
#SBATCH --output=logs/output_%j.log
#SBATCH --error=logs/error_%j.log
#SBATCH --partition=defq
#SBATCH --qos=short
#SBATCH --time=24:00:00
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=16
#SBATCH --mem=128G

python forget_quality.py \
    --model_path "HuyTran1301/SimNPO_Codellama" \
    --input_file "../Data-Collection/codellama/D_test.json" \
    --output_dir "./results/SimNPO_Codellama" \
    --batch_size 32 \
    --max_new_tokens 300 \
    --temperature 0.0 \
    --top_p 0.8 \
    --max_prompt_length 512
