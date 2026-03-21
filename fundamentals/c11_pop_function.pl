#!/usr/bin/perl -w 

@alpha = ('a' .. 'z');
print @alpha;
print "\n";

@slice = @alpha[4, 10 .. 15];
$, = " ";
print @slice;
print "\n";

$retval = pop(@slice);
print $retval . "\n";
print @slice;
print "\n";

$retval = shift(@slice);
print $retval . "\n";
print @slice;
print "\n";
