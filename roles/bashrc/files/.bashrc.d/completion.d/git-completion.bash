OS=$(uname)

if [[ "$OS" == "Linux" ]]; then
    # Nothing needs to be done as long as you have installed the following
    # packages:
    #       apt install git bash-completion

    # Bash scripts must not have empty blocks.  The column below is a no-op
    # operator, according to the thread below:
    #       https://stackoverflow.com/questions/12404661/what-is-the-use-case-of-noop-in-bash
    :
elif [[ "$OS" == "Darwin" ]]; then
    # This following if-statement is from the officially recommended wiki:
    #       https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
    # The completion script being sourced should have been installed by:
    #       brew install git bash-completion
    [ -f /opt/local/etc/profile.d/bash_completion.sh ] && \
        . /opt/local/etc/profile.d/bash_completion.sh
fi
