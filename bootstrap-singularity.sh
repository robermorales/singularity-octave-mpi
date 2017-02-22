#!/bin/sh

image=`basename $PWD`-`date +%Y%m%d-%H%M%S -u`.img

sudo singularity create $image
sudo singularity bootstrap $image singularity.def
