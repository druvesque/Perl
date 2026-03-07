#!/usr/bin/perl -w 
print "Please enter a Celcius degree > ";
chomp($cel = <STDIN>);
$fah = ($cel * 1.8) + 32;
print "The Fahrenheit equivalent of $cel degrees Celcius is $fah\n";
