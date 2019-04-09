#!/bin/bash
set -e

if [ $# -ne 3 ]; then
    echo "Usage: $0 deal.II-version TAG BASEVER"
    echo "  where deal.II-version is master v9.0.1 v8.5.1 ..."
    echo "  and   TAG is v9.0.1-r2 v8.5.1-r1 ..."
    docker images -f "reference=tjhei/candi"
    echo "  and BASEVER is gcc5 or clang6"
    docker images -f "reference=tjhei/candi;tag=$TAG-*"
    exit 1
fi

dealversion=$1
TAG=$2
BASEVER=$3

from="tjhei/candi:$TAG-$BASEVER"
out="tjhei/dealii:$dealversion-full-$TAG-$BASEVER"
echo "building $out from $from"
sed "s!%%FROM%%!$from!g" Dockerfile.in >Dockerfile.tmp
docker build --build-arg VER=$dealversion -t $out -f Dockerfile.tmp .
echo "built $out"
