# SimNPO

## Setup

```bash
conda create -n simnpo python=3.10
conda activate simnpo
pip install -r requirements.txt
```

## Evaluation

Để chạy đánh giá kết quả (forget quality) trên tập dữ liệu, hãy chạy script:

```bash
sbatch run_eval.sh
```