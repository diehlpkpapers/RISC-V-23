#!/usr/bin/bash

for i in 1 2 3 .. 4
do
/data/riscv/OctoTigerBuildChain/build/octotiger/build/octotiger --config_file=rotating_star.ini --max_level=4 --stop_step=5 --theta=0.5 --hpx:threads=$i --multipole_host_kernel_type=KOKKOS  --monopole_host_kernel_type=KOKKOS --hydro_host_kernel_type=KOKKOS > node_core_$i.log
done
