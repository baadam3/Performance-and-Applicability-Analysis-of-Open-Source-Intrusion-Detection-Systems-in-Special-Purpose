#!/bin/sh
apt-get update
apt-get install cmake make gcc g++ flex bison libpcap-dev libssl-dev python3 python3-dev swig zlib1g-dev
apt-get install python3-git python3-semantic-version
git clone --recursive https://github.com/zeek/zeek
cd zeek
./configure
make
make install
./configure --builddir=../zeek-buildtools
cd ../zeek-buildtools && make binpac bifcl
./configure --toolchain=/home/jon/x-tools/RaspberryPi-toolchain.cmake --with-binpac=$(pwd)/../zeek-buildtools/auxil/binpac/src/binpac --with-bifcl=$(pwd)/../zeek-buildtools/src/bifcl
make
make install
export PATH=/usr/local/zeek/bin:$PATH
