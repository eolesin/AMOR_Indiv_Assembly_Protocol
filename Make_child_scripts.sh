#!/bin/bash
### This script creates individual sbatch files for each sample to run
# define the inputs
samples=$(echo "$(cat AMOR_2020_Good)")

declare -a Smparray=($(echo $samples));         # create sample name array

# replace the placeholder in the template file with the names you want for each sample.
for samp in "${Smparray[@]}";
    do
    sed "s/<samp>/${samp}/g" "bowtie_template.sh" > "bowtiebuild_${samp}.sh"
done
