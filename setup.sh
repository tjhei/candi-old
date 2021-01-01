module load cpu gcc openmpi openblas cmake
export CC=mpicc
export CXX=mpicxx
export FC=mpif77

#srun --partition=compute  --pty --account=ucd150 --nodes=1 --ntasks-per-node=1 --cpus-per-task=128 \
#    --mem=248G -t 02:00:00 --wait=0 --export=ALL /bin/bash

#TODO: update to the current scratch directory:
export SCRATCH=/scratch/theister/job_825918
export DEST=/expanse/lustre/projects/ucd150/theister/libs-v1

./candi.sh -j 64 -p $DEST --platform=deal.II-toolchain/platforms/supported/centos7.platform
