#!/bin/sh

# echo 'deb http://pt.archive.ubuntu.com/ubuntu trusty main universe' > /etc/apt/sources.list
# echo 'deb http://ppa.launchpad.net/octave/stable/ubuntu trusty main' >> /etc/apt/sources.list

(grep universe /etc/apt/sources.list) || (sed -i 's/$/ universe/' /etc/apt/sources.list)
(grep octave /etc/apt/sources.list) || (echo 'deb http://ppa.launchpad.net/octave/stable/ubuntu trusty main' >> /etc/apt/sources.list)

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DCB1CB6E

apt update
apt install -y octave
