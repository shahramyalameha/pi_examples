#!/bin/bash -l

#$ -l gpu=1
#$ -l h_rt=2:0:0
#$ -cwd
#$ -l mem=12G

module purge
module load rcps-core
module load compilers/pgi/2017.3

hostname

nvidia-smi
pgaccelinfo 

make clean
make myriad

./pi
