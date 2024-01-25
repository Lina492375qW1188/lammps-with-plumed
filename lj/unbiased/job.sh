#!/bin/bash
#SBATCH --job-name="lj"
#SBATCH -p RM-shared
#SBATCH -t 00:10:00
#SBATCH -N 1
#SBATCH --ntasks-per-node 8

module load openmpi/4.0.5-gcc10.2.0

mpirun -n 1 $PROJECT/glotzer_group/lammps_plumed/lammps-2Aug2023/src/lmp_mpi -in inscript.in

