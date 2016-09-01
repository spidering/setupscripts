#!/usr/bin/env perl
use strict;
use warnings;

my %dir = ( 
        'RBDIR' => '/home/vagrant/.rbenv/bin',
        'PYDIR' => '/home/vagrant/.pyenv/bin',
        'PLDIR' => '/home/vagrant/.plenv/bin'
);
#print "$dir{'RBDIR'}\n$dir{'PYDIR'}\n$dir{'PLDIR'}\n";
my %env = (
        'RBENV' => `$dir{'RBDIR'}/rbenv install -l  | grep -v - | tail -1`,
        'PYENV' => `$dir{'PYDIR'}/pyenv install -l  | grep -v - | tail -1`, 
        'PLENV' => `$dir{'PLDIR'}/plenv install -l  | grep -v - | tail -1`

);
#print "$env{'RBENV'}\n$env{'PYENV'}\n$env{'PLENV'}\n";


#foreach my $key(keys(%env)) {
    #system($env{$key});
 #   print "$env{$value}\n";
#}

#while (my ($key, $value) = each(%env)) {
#     print "$key => $value\n";
#}
#foreach my $key(keys %env) {
#    print "$key\n";
#}
foreach my $value(values %env){
   print "$value\n";
}


