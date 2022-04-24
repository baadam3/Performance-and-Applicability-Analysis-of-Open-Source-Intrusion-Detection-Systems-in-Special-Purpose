#!/bin/sh
apt update
apt install build-essential -y
apt install libpcap-dev -y
apt install libpcre3-dev -y
apt install libnet1-dev -y
apt install zlib1g-dev -y
apt install luajit -y
apt install hwloc -y
apt install libdnet-dev -y
apt install libdumbnet-dev -y
apt install bison -y
apt install flex -y
apt install liblzma-dev -y
apt install openssl -y
apt install libssl-dev -y
apt install pkg-config -y
apt install libhwloc-dev -y
apt install cmake -y
apt install cpputest -y
apt install libsqlite3-dev -y
apt install uuid-dev -y
apt install libcmocka-dev -y
apt install libnetfilter-queue-dev -y
apt install libmnl-dev -y
apt install autotools-dev -y
apt install libluajit-5.1-dev -y
apt install libunwind-dev -y
apt install git -y
mkdir snort-source-files
cd snort-source-files
git clone https://github.com/snort3/libdaq.git
export LDFLAGS="-latomic"
cd libdaq
./bootstrap
./configure
make
make install
cd ../
git clone https://github.com/snortadmin/snort3.git
cd snort3/
./configure_cmake.sh --prefix=/usr/local
cd build
make
make install
ldconfig
mkdir /usr/local/etc/rules
wget https://www.snort.org/downloads/community/snort3-community-rules.tar.gz
tar xzf snort3-community-rules.tar.gz -C /usr/local/etc/rules/
rm snort3-community-rules.tar.gz
