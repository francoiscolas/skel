#!/bin/sh

PROGNAME=$(basename $0)
PROGDIR=$(cd `dirname $0`; pwd)

cd $HOME ; rm -vrf $(cd $PROGDIR; ls .[a-z]*)
cd $PROGDIR ; cp -vr $(ls -A | grep -Ev "^(.git|$PROGNAME)$") $HOME
