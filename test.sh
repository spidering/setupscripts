#!/bin/sh

RBENV = `/home/vagrant/.rbenv/bin/rbenv install -l | grep -v - | tail -1`
PYENV = `/home/vagrant/.pyenv/bin/pyenv install -l | grep -v - | tail -1`
PLENV = `/home/vagrant/.plenv/bin/plenv install -l | grep -v - | tail -1`

ENV=("RBENV" "PYENV" "PLENV")
for n in $(ENV[@]}
do
   $ENV
done

