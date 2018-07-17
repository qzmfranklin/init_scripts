#!/bin/bash -e

# OS is either Darwin or Linux.
OS=$(uname)


deb_install_ansible()
{
    sudo pip3 install -U ansible
    # TODO (zhongming): Sometimes, installation from the ppa breaks.
    # sudo apt-add-repository --yes ppa:ansible/ansible
    # sudo apt update
    # sudo apt install -y ansible
}

mac_install_ansible()
{
    which brew  || \
        /usr/bin/ruby -e \
        "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    brew install ansible  &&  brew upgrade ansible
}

if [[ "$OS" == "Linux" ]]; then
    which ansible  ||  deb_install_ansible
    # The -K flag will prompt you to enter the sudo password.  That is OK.
    DEFAULT_ROLES_PATH=config/init_scripts \
        ansible-playbook -i 'localhost,' -c local \
        ubuntu.yml --ask-become-pass \
        "$@"
elif [[ "$OS" == "Darwin" ]]; then
    which ansible  ||  mac_install_ansible
    # This should NOT prompt for any password.  DO NOT USE SUDO.
    DEFAULT_ROLES_PATH=config/init_scripts \
        ansible-playbook -i 'localhost,' -c local \
        macos.yml \
        "$@"
else
    echo "Architecture $OS is not supported."
fi
