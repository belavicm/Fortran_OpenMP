all:
	ifort -openmp -O3  ./source/OMP_1.f90 -o OMP_1.exe
	ifort -openmp -O3  ./source/OMP_2.f90 -o OMP_2.exe
	ifort -openmp -O3  ./source/OMP_3.f90 -o OMP_3.exe
	ifort -openmp -O3  ./source/OMP_4.f90 -o OMP_4.exe
OMP_1:
	export OMP_NUM_THREADS=4 ; ./OMP_1.exe
OMP_2:
	export OMP_NUM_THREADS=12 ; ./OMP_2.exe
OMP_3: 
	qsub -v WD=$(PWD) modrun_1.sh	
OMP_4:
	qsub -v WD=$(PWD) modrun_2.sh
clean:
	rm OMP*.exe OMP.o*
