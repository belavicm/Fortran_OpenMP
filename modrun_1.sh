#!/bin/bash
#PBS -l select=1:ncpus=6:mem=2gb
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

export OMP_NUM_THREADS=1
./OMP_3.exe

export OMP_NUM_THREADS=2
./OMP_3.exe

export OMP_NUM_THREADS=3
./OMP_3.exe

export OMP_NUM_THREADS=4
./OMP_3.exe

export OMP_NUM_THREADS=5
./OMP_3.exe

export OMP_NUM_THREADS=6
./OMP_3.exe

export OMP_NUM_THREADS=8
./OMP_3.exe

export OMP_NUM_THREADS=12
./OMP_3.exe

export OMP_NUM_THREADS=24
./OMP_3.exe
export OMP_NUM_THREADS=48
./OMP_3.exe



