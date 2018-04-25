#!/bin/bash

OS=$(uname)

if [[ "$OS" == "Linux" ]]; then
    sudo apt-add-repository --yes ppa:ansible/ansible
    sudo apt update
    sudo apt install -y ansible
    # The -K flag will prompt you to enter the sudo password.  That is OK.
    ansible-playbook -i 'localhost,' -c local ubuntu.yml -K
elif [[ "$OS" == "Darwin" ]]; then
    which brew  || \
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    brew install ansible
    # This should NOT prompt for any password.  DO NOT USE SUDO.
    ansible-playbook -i 'localhost,' -c local macos.yml
else
    echo "Arch $arch is not supported."
fi
