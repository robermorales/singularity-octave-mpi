#!/bin/sh

image=`basename $PWD`-`date +%Y%m%d-%H%M%S -u`.img

sudo singularity create -s 4000 $image
sudo singularity bootstrap $image singularity.def > singularity-bootstrap.log 2>&1

