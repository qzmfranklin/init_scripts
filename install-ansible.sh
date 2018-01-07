#!/bin/bash -ex

arch=$(uname)

if [ $arch == "Linux" ]; then
    sudo apt-add-repository --yes ppa:ansible/ansible
    sudo apt update
    sudo apt install -y ansible
elif [ $arch == "Darwin" ]; then
    echo "Not implemented for Darwin yet."
else
    echo "Invalid arch $arch."
fi
