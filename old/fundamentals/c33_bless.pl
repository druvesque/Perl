#!/usr/bin/perl
use warnings;
use strict;
my $a = {};
print '$a is a ', ref $a, " reference\n";
$b = bless ($a, "Person");
print '$b is a ', ref $a, " reference\n";
