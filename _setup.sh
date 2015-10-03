#!/bin/bash
export PREFIX_PATH=`pwd`/out
cd "$(dirname "$0")"
PROCS=8 CC=mpicc CXX=mpicxx FC=mpif90 FF=mpif77 ./candi.sh
