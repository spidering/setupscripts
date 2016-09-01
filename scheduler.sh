#!/usr/bin/env sh
APPNAME=Scheduler
APPNAME2=BBS
#/home/vagrant/Scheduler/script
APPDIR=$HOME/${APPNAME}/
APPDIR2=$HOME/${APPNAME2}/


carton exec -- plackup -I${APPDIR}lib --access-log /dev/null -p 5000 -a ${APPDIR}/script/scheduler-server
carton exec -- plackup -I${APPDIR2}lib --access-log /dev/null -p 5001 -a ${APPDIR2}/script/bbs-server

