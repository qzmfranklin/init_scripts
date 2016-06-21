# Flash the terminal until the user presses a key. Taken from the 'Example of
# use in shell scripting' section of this wiki page:
#       https://en.wikipedia.org/wiki/ANSI_escape_code
flash () { while true; do printf \\e[?5h; sleep 0.1; printf \\e[?5l; read -s -n1 -t1 && break; done; }
