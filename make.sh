#!/bin/sh

docker build -t tjhei/candi-base base/

cd v85; ./make.sh v8.5.1-r1; cd ..
cd v90; ./make.sh v9.0.1-r1; cd ..
