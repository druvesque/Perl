#!/usr/bin/perl -w 
print "Enter the list of string: \n";
@list = <STDIN>;
chomp(@list);
print @list;
print "\n";
@reverselist = reverse @list;
$, = ' ';
print @reverselist;
print "\n";
