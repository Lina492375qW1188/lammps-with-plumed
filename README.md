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

[LAMMPS](https://www.lammps.org/#gsc.tab=0) version: 2Aug2023

[PLUMED](https://www.plumed.org/doc-v2.8/user-doc/html/index.html) version: 2.8.2.
