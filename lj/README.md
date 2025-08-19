# Metadynamics of Lennard-Jones particles

Using LAMMPS with MPI usually requires building LAMMPS on clusters. Here is an example of building LAMMPS with PLUMED on _bridges2_ (`lammps*` means the LAMMPS folder):

```
cd lammps*/src/
make lib-plumed args="-b" # also check make lib-plumed for more options.
make yes-plumed
make yes-extra-fix
make yes-extra-dump
make mpi
```

If users would like to install LAMMPS with pre-built PLUMED, 
1. Build PLUMED (The following example also build PLUMED with MPI and crystallization packages enabled)
```
./configure  --prefix=[MY_PATH_TO_PLUMED] \
             --enable-mpi CXX="$MPICXX" \
             --enable-modules=+crystallization
make -j 4
make install
source source.sh # To have PLUMED in PATH variable.
```

2. Build LAMMPS
```
cd lammps*/src/
make lib-plumed args="-p [MY_PATH_TO_PLUMED] -m shared"
make yes-plumed
make yes-extra-fix
make yes-extra-dump
make mpi
```

[LAMMPS](https://www.lammps.org/#gsc.tab=0) version: 2Aug2023

[PLUMED](https://www.plumed.org/doc-v2.8/user-doc/html/index.html) version: 2.8.2.
