#!/usr/bin/env sh
APPNAME=Scheduler
#/home/vagrant/Scheduler/script
APPDIR=$HOME/${APPNAME}/


carton exec -- plackup -I${APPDIR}lib --access-log /dev/null -p 5000 -a ${APPDIR}/script/scheduler-server

