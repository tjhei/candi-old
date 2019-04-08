#!/bin/sh
set -e

docker build -t tjhei/candi-base base/

cd v85; ./make.sh v8.5.1-r1; cd ..
cd v90; ./make.sh v9.0.1-r5; cd ..

cd dealii; ./make.sh v8.5.1 v8.5.1-r1; cd ..
cd dealii; ./make.sh v9.0.1 v9.0.1-r5; cd ..

master=e2c9db2
#cd dealii; ./make.sh $master v9.0.1-r5; cd ..

docker push tjhei/candi:v8.5.1-r1
docker push tjhei/candi:v9.0.1-r5
docker push tjhei/dealii:v8.5.1-full-v8.5.1-r1
docker push tjhei/dealii:v9.0.1-full-v9.0.1-r5
