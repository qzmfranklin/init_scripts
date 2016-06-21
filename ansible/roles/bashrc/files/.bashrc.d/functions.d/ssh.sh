################################################################################
# The following scripts are shamelessly borrowed from Andy (apatti). There are
# several functions defined here:
#   - start-ssh-agent()
#   - ssh-add-key()
################################################################################

has-ssh-agent() {
    # Return 1 if the current shell can connect to ssh-agent.
    # Return 0 otherwise.
    ssh-add -l &> /dev/null
    ret=$?
    # Note: ssh-add return codes:
    #   0 = success,
    #   1 = specified command fails (e.g., no keys with ssh-add -l)
    #   2 = unable to contact the authentication agent
    if [ $ret -eq 2 ]; then
        return 0
    else
        return 1
    fi
}

start-ssh-agent() {
    #
    # Start an ssh agent if none is running already.
    # * First we try to connect to one via SSH_AUTH_SOCK
    # * If that doesn't work out, we try via the file ssh-agent-environment
    # * And if that doesn't work out either, we just start a fresh one and write
    #   the information about it to ssh-agent-environment for future use.
    #
    # We don't really test for a correct value of SSH_AGENT_PID as the only
    # consequence of not having it set seems to be that one cannot kill
    # the ssh-agent with ssh-agent -k. But starting another one wouldn't
    # help to clean up the old one anyway.
    #
    if [ -n "$SSH_AUTH_SOCK" ]; then
        #
        # First effort: Via SSH_AUTH_SOCK/SSH_AGENT_PID
        #
        # SSH_AUTH_SOCK is defined, so try to connect to the authentication agent
        # it should point to. If it succeeds, reset newsshagent.
        ssh-add -l &> /dev/null
        if [[ $? != 2 ]]; then
            echo "SSH agent already running."
            return 0
        else
            echo "Could not contact the ssh-agent pointed at by SSH_AUTH_SOCK, trying more..."
        fi
    elif [ -f "$sshfile" ]; then
        #
        # Second effort: $sshfile
        #
        # Load the environment given in $sshfile
        sshfile=~/\.ssh_agent_`hostname`_`whoami`
        . $sshfile &>/dev/null
        unset sshfile
        # Try to contact the ssh-agent
        ssh-add -l &>/dev/null
        if [[ $? != 2 ]]; then
            echo "SSH agent already running; reconfigured the environment."
            return 0
        else
            echo "Could not contact the ssh-agent pointed at by $sshfile."
        fi
    else
        #
        # And if we haven't found a working one, start a new one.
        #
        #Create a new ssh-agent
        sshfile=~/\.ssh_agent_`hostname`_`whoami`
        echo "Creating new SSH agent."
        ssh-agent -s > $sshfile && . $sshfile
        # Other users must not use or tamper with the $sshfile.
        chmod 700 $sshfile
        unset sshfile
    fi
}

ssh-add-key() {
    ssh-add -l > /dev/null 2>&1
    ret=$?
    if [ $ret -eq 1 ]; then
        ssh-add
    fi
}
