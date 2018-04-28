# TODO: Fix the following problem: If vimrc sets tabstop to any number other
# than 8, the manpage won't display tab-indented texts correctly.

#man() {
#  /usr/bin/man $* | \
#    col -b | \
#    vim -MRn -c 'set ft=man nomod nolist nospell nonu' -
#}
