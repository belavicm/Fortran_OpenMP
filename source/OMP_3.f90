PROGRAM OMP_3

INTEGER :: NTHREADS,n,i,j,k, OMP_GET_NUM_THREADS
REAL (KIND=8), DIMENSION(100,100,100) :: xx

!init system_clock-a, sluzi kao timer
integer ( kind = 4 ) clock_count
integer ( kind = 4 ) ct1
integer ( kind = 4 ) ct2
integer ( kind = 4 ) clock_max
integer ( kind = 4 ) clock_rate
call system_clock ( clock_count, clock_rate, clock_max )

!timer t1      
call system_clock ( ct1, clock_rate, clock_max )
! ukljucimo OPENMP, pocinje paralelizacija, petlja koja ide N puta i puni polje xx(i,j,k)
!$OMP PARALLEL DO
DO n=1,1000
DO i = 1,100
   DO j = 1,100
      DO k = 1,100
      xx(i,j,k)=(i+j+k)*j/k/i
      END DO
   END DO
END DO
END DO
!     All threads join master thread and disband
!$OMP END PARALLEL DO

call system_clock ( ct2, clock_rate, clock_max )
!$OMP PARALLEL
NTHREADS = OMP_GET_NUM_THREADS()
!$OMP END PARALLEL

!print broj threadova i wall time
PRINT *, 'Number of threads = ', NTHREADS,", Time= ",real ( ct2 - ct1, kind = 8 ) / real (clock_rate, kind = 8 ), ' seconds'
END
