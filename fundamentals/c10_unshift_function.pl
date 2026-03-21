#!/usr/bin/perl -w 

@alpha1 = ("a", "b", "c");
@alpha2 = ("d", "e", "f");
@alpha3 = ("g", "h", "i");

$numEle = push(@alpha1, @alpha2); # append
print $numEle . "\n";
print @alpha1;
print "\n";
unshift @alpha3, @alpha2;
$, = " ";
print @alpha3;
print "\n";
$num = @alpha3;
print $num;
