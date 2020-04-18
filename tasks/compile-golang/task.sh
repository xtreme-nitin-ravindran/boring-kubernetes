#! /bin/bash

set -eux

pushd golang
    cd src
    ./all.bash
popd