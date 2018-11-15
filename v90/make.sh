#!/bin/sh
set -e

if [ $# -ne 1 ]; then
    echo "Usage: $0 TAG"
    echo "where TAG is one of:"
    git tag -l 'v9.0.*'
    exit 1
fi

TAG=$1
REPO=tjhei

path=$PWD
rm -rf candi && cd .. && git archive --format=tar --prefix=candi/ $TAG | (cd $path; tar xf -)
cd $path

echo "building $REPO/candi:$TAG"
docker build -t tjhei/candi:$TAG .
echo "built $REPO/candi:$TAG"
