man() {
  /usr/bin/man $* | \
    col -b | \
    vim -MRn -c 'set ft=man nomod nolist nospell nonu' -
}
