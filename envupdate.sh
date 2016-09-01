#!/bin/bash
RBENV=$HOME/.rbenv
PYENV=$HOME/.pyenv
PLENV=$HOME/.plenv

if [ -d $PLENV ]; then
   cd $PLENV
   git pull
else
   git clone https://github.com/tokuhirom/plenv.git $HOME/.plenv
   git clone https://github.com/tokuhirom/Perl-Build.git $HOME/.plenv/plugins/perl-build 
fi

if [ -d $PYENV ]; then
   cd $PYENV
   git pull
else
   git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv
   git clone https://github.com/yyuu/pyenv-virtualenv.git $HOME/.pyenv/plugins/pyenv-virtualenv
fi

if [ -d $RBENV ]; then
   cd $RBENV
   git pull
else
   git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
   git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build 
fi
