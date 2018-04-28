# Taken from Jiabao Qu.
# Slightly modified by Zhongming Qu.

# Undocumented feature which sets the size to "unlimited":
#       http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=

# Display datetime information in the output of the `history` command.
export HISTTIMEFORMAT="[%F %T] "

# Change the file location because certain bash sessions truncate .bash_history
# file upon close:
#       http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bashrc.d/env.d/bash_eternal_history

# Force prompt to write history after every command:
#       http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
