#!/bin/bash
### This script submits sbatch scripts, one for each sample

# define server list
samp_list=$(echo "$(cat AMOR_2020_Good)")

# submit sbatch for each slurm server
for samp in "${samp_list[@]}"; do
    sbatch "bowtiebuild_${samp}.sh"
done
