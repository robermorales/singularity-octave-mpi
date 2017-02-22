#!/bin/sh

hg clone http://hg.code.sf.net/p/octave/mpi /tmp/mpi
cd /tmp/mpi
hg archive ../mpi.zip
octave-cli --eval 'pkg install ../mpi.zip'
