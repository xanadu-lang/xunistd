#!/bin/sh

######
#
# Author:
# Richar Kent (https://github.com/sparverius)
#
######

main() {
    make_all
}

######

make_all() {
    (cd ./xanadu/srcgen/xats && make xatsopt)
    (cp -f ./xanadu/srcgen/xats/xatsopt ./bin/xatsopt)
}

######
#
# For when this repository is cloned without --recursive flag
#
######

clone_xanadu() {
    if [ ! -d xanadu/srcgen ]; then
	git clone https://github.com/xanadu-lang/xanadu.git
    fi
}

######

main

###### end of [build.sh] ######
