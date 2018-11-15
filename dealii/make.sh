#!/bin/bash
set -e

if [ $# -ne 2 ]; then
    echo "Usage: $0 deal.II-version TAG"
    echo "  where deal.II-version is master v9.0.1 v8.5.1 ..."
    echo "  and   TAG is v9.0.1-r2 v8.5.1-r1 ..."
    exit 1
fi

dealversion=$1
TAG=$2

from="tjhei/candi:$TAG"
out="tjhei/dealii:$dealversion-full-$TAG"

echo "from=$from dealii=$dealversion out=$out"
sed "s!%%FROM%%!$from!g" Dockerfile.in | docker build --build-arg VER=$dealversion -t $out -
