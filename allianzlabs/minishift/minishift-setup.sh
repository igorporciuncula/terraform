#!/bin/bash

export VER="1.34.2"

curl -L https://github.com/minishift/minishift/releases/download/v$VER/minishift-$VER-linux-amd64.tgz -o minishift-$VER-linux-amd64.tgz

tar zvfx minishift-$VER-linux-amd64.tgz

cd minishift-$VER-linux-amd64

./minishift start --vm-driver=virtualbox --cpus=4 --memory=4096
