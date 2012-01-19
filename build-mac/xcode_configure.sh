#!/bin/sh

case "$ACTION" in
"clean")
#    rm -f configured.lock
#    rm -Rf build
    rm -Rf ../lib
;;
*)
    if [ ! -e configured.lock ]
    then
        ./update.sh
        touch configured.lock
    fi
;;
esac
