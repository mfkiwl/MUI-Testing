#!/bin/bash

# Usage: [binary] [config_filename]

sh clean.sh

bin=../build/MUI_Testing

MPI_RANKS_1=1
MPI_RANKS_2=1

instanceOne="-n ${MPI_RANKS_1} ${bin} config1"
instanceTwo="-n ${MPI_RANKS_2} ${bin} config2"

mpirun --oversubscribe ${instanceOne} : ${instanceTwo}
