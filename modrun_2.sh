#!/bin/bash
#PBS -l select=2:ncpus=6:mem=2gb
#PBS -N OMP
#PBS -q multi
#PBS -l cput=200:00:00
#PBS -l place=pack:shared
#PBS -S /bin/sh
#PBS -j oe
#PBS -r n

# radni direktorij iz Makefile-a 
cd $WD

# broj threadova iz Makefile-a
# varijabla OMP_NUM_THREADS biramo broj threadova koji ce se koristiti u .exe programu 

export OMP_NUM_THREADS=12
./OMP_4.exe



