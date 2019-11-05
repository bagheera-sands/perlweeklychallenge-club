#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';
my %T;
while(<>) {
  $T{$_}++ foreach split m{}, (lc $_) =~ s{[^a-z]}{}r;
}


say $_,': ',$T{$_}||0 foreach 'a'..'z';
