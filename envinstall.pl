#!/usr/bin/env perl
use strict;
use warnings;
my $RBDIR = "/home/vagrant/.rbenv/bin";
my $PYDIR = "/home/vagrant/.pyenv/bin";
my $PLDIR = "/home/vagrant/.plenv/bin";
my $PHPDIR = "/home/vagrant/.phpenv/bin";
my $cpanmdir = "/home/.cpanm";
#my $RBENV = "2.3.1";
#my $PYENV = "3.5.2";
#my $PLENV = "5.24.0";
my $RBENV = `$RBDIR/rbenv install -l | grep -v - | tail -1`;
my $PYENV = `$PYDIR/pyenv install -l | grep -v - | tail -1`;
my $PLENV = `$PLDIR/plenv install -l | grep -v - | tail -1`;
my $PHPENV = `$PHPDIR/phpenv install -l | grep -v - | tail -1`;
system ("$RBDIR/rbenv install ${RBENV}\n");
system ("$PYDIR/pyenv install ${PYENV}\n");
system ("$PLDIR/plenv install ${PLENV}\n");
system ("$PHPDIR/phpenv install ${PHPENV}\n");
#system ("$PLDIR/plenv install-cpanm");
#if (!$cpanmdir) {
#  system ("$PLDIR/plenv install-cpanm");
#} else {
#  print "$cpanmdir already exist";
#}
#system ("$PLDIR/plenv install-cpanm\n");
system ("$RBDIR/rbenv global ${RBENV}\n");
system ("$PYDIR/pyenv global ${PYENV}\n");
system ("$PLDIR/plenv global ${PLENV}\n");
system ("$PHPDIR/phpenv global ${PHPENV}\n");

