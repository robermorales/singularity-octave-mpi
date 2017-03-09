#!/bin/sh

# GIT_VERSION=`git symbolic-ref --short HEAD || git describe --all || date +%Y%m%d-%H%M%S -u`

image=`basename $PWD`.img

sudo singularity create -s 4000 $image
sudo singularity bootstrap $image singularity.def

lz4 $image $image.lz4
sha512sum $image* > sha512sums
rm -f $image
