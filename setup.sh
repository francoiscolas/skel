#!/bin/sh

PROGNAME=$(basename $0)
PROGDIR=$(dirname $0)

cd $HOME ; rm -vrf $(cd $PROGDIR ; ls -d .[a-z]*/)
cd $PROGDIR ; cp -vr $(ls -A | grep -Ev ".git|$PROGNAME") $HOME

sudo apt install vim-pathogen
