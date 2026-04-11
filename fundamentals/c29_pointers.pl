#!/usr/bin/perl -w
$a = \100;
print $a;   # gives a hex value 
print "\n";
print $$a;  # gives value stored in a
print "\n";
$b = \$a;   # this becomes double pointer
print $b;
print "\n";
print $$b;  # is a pointer to pointer $a
print "\n";
print $$$b; # is actual value stored in pointer $a
print "\n";
$$$b = 90;  # there is a problem in this statement
print $$a;
print "\n";
