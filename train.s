#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --gres=gpu:p1080:1
#SBATCH --time=24:00:00
#SBATCH --mem=32GB
#SBATCH --job-name=CV_train
#SBATCH --output=train.out
module load python3/intel/3.6.3 
module load pytorch/python3.6/0.3.0_4
python3 neural_style/neural_style.py train --dataset train_images --style-image style_images/paul-signac-place.jpg --save-model-dir models --epochs 2 --cuda 1
exit
