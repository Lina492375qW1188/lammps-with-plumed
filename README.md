# lammps-with-plumed

The LAMMPS was installed with EXTRA-FIX, EXTRA-DUMP and PLUMED package.

```
cd lammps*/src/
make lib-plumed args="-b" # also check make lib-plumed for more options.
make yes-plumed
make yes-extra-fix # for dumping xtc, dcd ... file format.
make yes-extra-dump
make serial
```
