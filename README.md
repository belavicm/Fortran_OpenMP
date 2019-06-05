# Fortran paralelizacije OpenMP na DHMZ linux clusteru

Program prolazi kroz nekoliko jednostavnih primjera paralelizacije OpenMP

## Upute za pokretanje programa:

Napravljeni je Makefile koji se može pogledati
```
vi Makefile
```

Compile programa se radi
```
make all
```

Clean:
```
make clean
```

Pokretanje programa 
```
make OMP_#
```
gdje je # broj od 1 do 4

Kod svakog zadatka pozeljno je pogledati:
* source file "/source/OMP_#"
* Makefile "vi Makefile"
* modrun_1.sh za OMP_3 odnosno modrun_2.sh za OMP_4

modrun sluzi za pokretanje programa OMP_3 i OMP_4 na vihoru, dok se prva dva programa vrte na login procesorima. Izlaz tih programa spremljen je u wd kao " OMP.o*"


