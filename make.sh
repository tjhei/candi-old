#!/bin/sh
set -e
set -o xtrace

## base:
docker build -t tjhei/candi-base:gcc5 base-gcc5/
docker build -t tjhei/candi-base:clang6 base-clang6/
docker build -t tjhei/candi-base:gcc5-openmpi base-gcc5-openmpi/

## 8.5:
#cd v85; ./make.sh v8.5.1-r1 gcc5; cd ..
#cd dealii; ./make.sh v8.5.1 v8.5.1-r1 gcc5; cd ..

## 9.0:
#cd v90; ./make.sh v9.0.1-r5 gcc5; cd ..
#cd v90; ./make.sh v9.0.1-r5 clang6; cd ..
#cd dealii; ./make.sh v9.0.1 v9.0.1-r5 gcc5; cd ..
#cd dealii; ./make.sh v9.0.1 v9.0.1-r5 clang6; cd ..


## 9.1:
#cd v90; ./make.sh v9.1.1-r1 gcc5; cd ..
#cd v90; ./make.sh v9.1.1-r1 clang6; cd ..
#cd dealii; ./make.sh v9.1.1 v9.1.1-r1 gcc5; cd ..


#TODO cd v90; ./make.sh v9.1.1-r1 clang6; cd ..
# cd v90; ./make.sh v9.1.1-r2 gcc5-openmpi; cd ..
# cd dealii; ./make.sh v9.1.1 v9.1.1-r2 gcc5-openmpi; cd ..
# TODO cd dealii; ./make.sh v9.1.1 v9.1.1-r1 clang6; cd ..



#master=e2c9db2
#cd dealii; ./make.sh $master v9.0.1-r5; cd ..

TODO: make 9.2.0-r1 with new trilinos 
pause


docker push tjhei/candi-base:gcc5
docker push tjhei/candi-base:clang6
docker push tjhei/candi:v8.5.1-r1-gcc5
docker push tjhei/candi:v9.0.1-r5-gcc5
docker push tjhei/candi:v9.1.1-r1-gcc5
docker push tjhei/dealii:v8.5.1-full-v8.5.1-r1-gcc5
docker push tjhei/dealii:v9.0.1-full-v9.0.1-r5-gcc5
docker push tjhei/dealii:v9.0.1-full-v9.0.1-r5-clang6

docker push tjhei/dealii:v9.1.1-full-v9.1.1-r1-gcc5
docker push tjhei/dealii:v9.1.1-full-v9.1.1-r1-clang6
