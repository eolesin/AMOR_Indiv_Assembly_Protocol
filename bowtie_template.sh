#!/usr/bin/bash
# every job must be accounted for
#SBATCH --account=nn9836k

# every job requires some specification of the number of cores to be used
#SBATCH --ntasks=1
# every job requires some specification of the memory (RAM) it needs
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=5G
# every job requires a runtime limit
#SBATCH --time=12:00:00

# setting up software environment
module purge
module load Bowtie2/2.4.2-GCC-10.2.0

# Run bowtie2 build on the data 
bowtie2-build 04_CONTIGS/<samp>.prefixed.fa 05_COMAPPING/<samp>

