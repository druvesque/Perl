#!/usr/bin/perl -w 
$string = "a\tb\t";
$string =~ s/\t/' 'x4/g; # change all tabs to 4 spaces (nw)
print $string;
print "\n\n";

$string = "a\nb\nc\n";
$string =~ s/^(.*)\n$/$1/s; # like chomp(),  remove trailing \n
print $1;
print $string;
print "\n";

print "\n";
$string = 'JorMunGAndR';
$string =~ tr/a-z/A-Z/;
print $string;
print "\n";
$string =~ tr/A-Z/a-z/;
print $string;
