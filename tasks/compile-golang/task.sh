#! /bin/bash
set -ex
apt-get update
apt-get -y install golang git
current_dir=$(pwd)
export GOROOT_BOOTSTRAP=/usr/local/go

pushd golang
    cd src
    ./all.bash
popd

apt-get -y --purge remove golang
export PATH=$current_dir//golang/bin
go version

pushd kubernetes
    make
popd