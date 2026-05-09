#!/usr/bin/perl - w
# stats.pl
# This program uses stats.pm to print out some assorted
# statistics on the input number
BEGIN {
    @INC = (@INC, './');
}

use c34_stats;
# Catch Ctrl - C (SINGINT signal)
$SIG{'INT'} = 'getResults';
my $obj = new c34_stats;
sub getResults {
    print "\n\nResults =========================\n";
    print "Number of values: ", scalar($obj->getValueList()), "\n";
    print "Total: ", $obj->getTotal(), "\n";
    print "Mean: ", $obj->getMean(), "\n";
    print "Standard Deviation: ", $obj->getStdDev(), "\n";
    print "Variance: ", $obj->getVariance(), "\n";
    exit(0);
}


print qq~
Statistics Calculator
Calculates several sets of statistics given a sequence of input numbers
Enter one value on each line
To exit, press Ctrl-C
~;

while (1) {
    print ">> ";
    chomp(my $num = <STDIN>);
    $obj->addValue($num);
}

