#!/usr/bin/bash

mpirun.openmpi --hostfile hosts.ini /data/riscv/OctoTigerBuildChain/build/octotiger/build/octotiger --config_file=rotating_star.ini --max_level=4 --stop_step=5 --theta=0.5 --hpx:threads=4 --multipole_host_kernel_type=KOKKOS  --monopole_host_kernel_type=KOKKOS --hydro_host_kernel_type=KOKKOS > mpi.log
