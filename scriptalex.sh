#!/bin/bash
#SBATCH --job-name=OMP_PCA
#SBATCH --time=0-0:5
#SBATCH --cpus-per-task=8
#SBATCH --hint=compute_bound
export OMP_NUM_THREADS=32


./pca ./datasets/125.dat 2 4

./pca ./datasets/125.dat 4 4

./pca ./datasets/125.dat 8 4

./pca ./datasets/125.dat 16 4

./pca ./datasets/125.dat 32 4



