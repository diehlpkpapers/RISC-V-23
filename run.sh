#!/bin/bash
#PJM -L "node=2"
#PJM --mpi "shape=2" 
#PJM -L "rscgrp=small"
#PJM -L "elapse=360:00"
#PJM -g XXX
#PJM -x PJM_LLIO_GFSCACHE=/vol0004
#PJM -S                # Direction of output statistic information file (-s or -S)

. /vol0004/apps/oss/spack-v0.17.0/share/spack/setup-env.sh

spack load gcc@11.2.0%gcc@8.4.1 arch=linux-rhel8-a64fx
spack load fujitsu-mpi@head%gcc@11.2.0 arch=linux-rhel8-a64fx

mpiexec -n 2 /vol0004/ra010008/data/u10393/OctoTigerBuildChain/build/octotiger/build/octotiger  --config_file=rotating_star.ini --max_level=4 --stop_step=5 --theta=0.5 --multipole_host_kernel_type=KOKKOS  --monopole_host_kernel_type=KOKKOS --hydro_host_kernel_type=KOKKOS --hpx:threads=4  
