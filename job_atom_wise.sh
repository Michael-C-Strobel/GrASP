#!/bin/bash
## --- Uncomment for GPU ---
#SBATCH -p gpuk80
#SBATCH --gres=gpu:2
#SBATCH --ntasks-per-node=4
#SBATCH --time 5:00:00
#SBATCH --nodes=1
#SBATCH --job-name="scPDB GPU"
#SBATCH --mail-user=strobelm@umd.edu
#SBATCH --mail-type=ALL

## --- Uncomment for CPU ---
#SBATCH -p shared 
#SBATCH --ntasks-per-node=6
#SBATCH --time 2:00:00
#SBATCH --nodes=1
#SBATCH --job-name="scPDB CPU"
#SBATCH --mail-user=strobelm@umd.edu
#SBATCH --mail-type=ALL


ml anaconda
ml cuda/10.2
conda activate ~/pytorch_env
python3 atom_wise_model.py 


