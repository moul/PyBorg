#!/bin/bash

if [ -n "MYNAME" ]; then
    sed -i 's/^myname.*/myname = "$MYNAME"/'
fi

read pid cmd state ppid pgrp session tty_nr tpgid rest < /proc/self/stat
trap "kill -TERM -$pgrp; exit" EXIT TERM KILL SIGKILL SIGTERM SIGQUIT

./start.sh
