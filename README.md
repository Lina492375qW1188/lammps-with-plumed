# lammps-with-plumed

There are many ways to build lammps with plumed support. Refer to `lammps*/lib/plumed/README` and `lammps/src/PLUMED` for more details.

The LAMMPS used for this repo was installed with EXTRA-FIX, EXTRA-DUMP and PLUMED package.


The following is an example of simple build of LAMMPS with PLUMED on mac os system.
```
cd lammps*/src/
make lib-plumed args="-b" # also check make lib-plumed for more options.
make yes-plumed
make yes-extra-fix # for dumping xtc, dcd ... file format.
make yes-extra-dump
make serial
```

Or build PLUMED first and link LAMMPS to PLUMED
```
cd plumed*/
PATH_TO_PLUMED=/usr/local/ # Example
./configure --prefix=${PATH_TO_PLUMED}
./configure --prefix=${PATH_TO_PLUMED} \
            --enable-mpi CXX="$MPICXX" \ # if installed with MPI
            --enable-modules=+crystallization # if installed with crystallization module
make -j 4
make install
source source.sh # To have PLUMED in PATH variable.

cd lammps*/src/
make lib-plumed args="-p ${PATH_TO_PLUMED} -m shared"
make yes-plumed
make yes-extra-fix
make yes-extra-dump
make mpi # or make serial if no MPI installed.
```


Basic brute-force, metadynamics, restart examples with a minimal randomization and energy minimization are described in `lj` (droplet nucleation of Lennard-Jones particles).

[LAMMPS](https://www.lammps.org/#gsc.tab=0) version: 2Aug2023

[PLUMED](https://www.plumed.org/doc-v2.8/user-doc/html/index.html) version: 2.8.2.
