#!/bin/sh
set -e

if [ $# -eq 1 ]; then
    TAG=$1
    BASEVER=gcc5
elif [ $# -eq 2 ]; then
    TAG=$1
    BASEVER=$2
else
    echo "Usage: $0 TAG BASEVER"
    echo "  where TAG is one of:"
    git tag -l 'v8.5.*'
    echo "  where BASEVER is one of the versions of:"
    docker images -f "reference=tjhei/candi-base"
    exit 1
fi

REPO=tjhei

path=$PWD
rm -rf candi && cd .. && git archive --format=tar --prefix=candi/ $TAG | (cd $path; tar xf -)
cd $path

from=tjhei/candi-base:$BASEVER
out=tjhei/candi:$TAG-$BASEVER
echo "building $out from $from"
sed "s!%%FROM%%!$from!g" Dockerfile.in >Dockerfile.tmp
docker build -t $out -f Dockerfile.tmp .
echo "built $out"
