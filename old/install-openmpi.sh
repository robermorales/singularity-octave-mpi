#!/bin/sh

git clone https://github.com/open-mpi/ompi.git /tmp/ompi
cd /tmp/ompi
./autogen.pl
./configure --prefix=/usr/local
make
make install
