#! /bin/bash
set -ex
apt-get update
apt-get -y install golang

export GOROOT_BOOTSTRAP=/usr/local/go

pushd golang
    git checkout dev.boringcrypto.go1.14
    cd src
    ./all.bash
popd