#!/usr/bin/perl -w 
$sum = 0;
print "Enter a number (999 to quit): ";
chomp($n = <STDIN>);
while ($n != 999) {
    $sum += $n;
    print "Enter another number (999 to quit): ";
    chomp($n = <STDIN>);
}
print "the sum is $sum\n";
