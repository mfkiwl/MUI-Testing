#!/bin/bash

# Usage: [binary] [config_filename]

sh clean.sh

bin=../build/Release/MUI_Testing

MPI_RANKS_1=2
MPI_RANKS_2=2

instanceOne="-n ${MPI_RANKS_1} ${bin} config1"
instanceTwo="-n ${MPI_RANKS_2} ${bin} config2"

#mpirun ${instanceOne} : ${instanceTwo}
mpirun --output-filename console_output ${instanceOne} : ${instanceTwo}

