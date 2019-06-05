PROGRAM OMP_1

INTEGER :: NTHREADS,TID,OMP_GET_THREAD_NUM,OMP_GET_NUM_THREADS,omp_get_max_threads,omp_get_num_procs

!$OMP PARALLEL PRIVATE(NTHREADS, TID)

!Obtain thread number
!TID je privatna varijabla u OMP pa ce svaki thread imati svoj TID-> THREAD NUMBER
TID = OMP_GET_THREAD_NUM()

PRINT *, 'Hello World from thread = ', TID

!Only master thread does this
IF (TID .EQ. 0) THEN
   NTHREADS = OMP_GET_NUM_THREADS()
   PRINT *, 'Number of threads = ', NTHREADS
   PRINT *,"omp_get_max_threads=", omp_get_max_threads()
   PRINT *,"Broj procesora, omp_get_num_procs",omp_get_num_procs()
END IF


!All threads join master thread and disband
!$OMP END PARALLEL
END
