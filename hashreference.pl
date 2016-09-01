#!/usr/bin/env perl
use strict;
use warnings;

my %dir = ( 
        'RBDIR' => '/home/vagrant/.rbenv/bin',
        'PYDIR' => '/home/vagrant/.pyenv/bin',
        'PLDIR' => '/home/vagrant/.plenv/bin'
);
my @keylist = keys(%dir);
my $keycount = keys(%dir);
print "$keycount\n";

for (my $i = 0; $i < $keycount; $i++) {
    print "$keylist[$i]\n";
}
#print "RBDIR:","$dir{RBDIR}\n";
#print "PYDIR:","$dir{PYDIR}\n";
#print "PLDIR:","$dir{PLDIR}\n";

#my $envdir = \%dir;
#for(keys %$envdir) {
#print "$_:$$envdir{$_}","\n";
#}


#my $envdir = \%dir;
#print "$envdir->{'RBDIR'}","\n";
#print "$envdir->{'PYDIR'}","\n";
#print "$envdir->{'PLDIR'}","\n";


 
#print "$dir{'RBDIR'}\n";
#print "$dir{'PYDIR'}\n";
#print "$dir{'PLDIR'}\n"; 

my %env = (
        "RBENV" => `$dir{'RBDIR'}/rbenv install -l | grep -v - | tail -1`,
        "PYENV" => `$dir{'PYDIR'}/pyenv install -l | grep -v - | tail -1`, 
        "PLENV" => `$dir{'PLDIR'}/plenv install -l | grep -v - | tail -1`
);
#print "rubyの最新バージョンは$env{'RBENV'}です\n";
#print "pythonの最新バージョンは$env{'PYENV'}です\n";
#print "perlの最新バージョンは$env{'PLENV'}です\n";
