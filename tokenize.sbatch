#!/bin/bash
#SBATCH --job-name=tokenize
#SBATCH --output=/home/%u/out/tokenize.%j.out
#SBATCH --error=/home/%u/err/tokenize.%j.err
#SBATCH --time=02:00:00
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=32GB
module load r/4.2.1
R --no-save < /farmshare/learning/scripts/scripts/tokenizer_r/tokenize.r
