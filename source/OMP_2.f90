PROGRAM OMP_2

INTEGER :: NTHREADS,i,a(100),OMP_GET_THREAD_NUM,OMP_GET_NUM_THREADS

a=1
PRINT *,"1-D polje a(100) ispunimo jednicama"
PRINT *,"Zatim zelimo napraviti operaciju a(i+1)=a(i)+1,  za i=1,2,3,...,99"
!kod 
DO i=1,99
   a(i+1)=a(i)+1
END DO
PRINT *, "Polje a() bez paralelizacije"
PRINT *, a

PRINT *, "Sad pokrenemo taj isti kod samo s paralelizacijom"

a=1
!koristi se isti kod samo se doda !$OMP da ukljucimo pararelizaciju
!$OMP PARALLEL DO
DO i=1,99
   a(i+1)=a(i)+1
END DO

!$OMP END PARALLEL DO

!$OMP PARALLEL
IF (OMP_GET_THREAD_NUM() .EQ. 0) THEN
   NTHREADS = OMP_GET_NUM_THREADS()
END IF
!$OMP END PARALLEL

PRINT *, "Polje a() s paralelizacijom, ","Threads=",NTHREADS
PRINT *, a


PRINT *, "Petlja DO se podjelila na dijelove i svaki thread radi svoj dio"
PRINT *, "Zbog toga svaki od threadova pocinje s poljem koje je inicijalizirano brojem 1"
END
