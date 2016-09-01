#!/usr/bin/env perl

$rbenvNewest = `rbenv install -l | grep -v - | tail -1`;
$pyenvNewest = `pyenv install -l | grep -v - | tail -1`;
$plenvNewest = `plenv install -l | grep -v - | tail -1`;


print "rbenvの最新バージョンは$rbenvNewest";
print "pyenvの最新バージョンは$pyenvNewest";
print "plenvの最新バージョンは $plenvNewest";
