#!/usr/bin/perl
# c35_stats.pl - This program uses c35_stats.m to print out some
# statistics on the input numbers
BEGIN {
@INC = (@INC, './');
}
use c35_stats;
# Catch Ctrl-C (SIGINT signal)
$SIG{'INT'} = 'getResults';
my $obj = new c35_stats;
sub getResults {
    print "\n\nResults ==========================\n";
    print "Number of values: ", scalar($obj->getValueList()), "\n";
    print "Minimum: ", $obj->getMinimum(), "\n";
    print "Maximum: ", $obj->getMaximum(), "\n";
    print "Total: ", $obj->getTotal(), "\n";
    print "Mean: ", $obj->getMean(), "\n";
    print "Standard: ", $obj->getStdDev(), "\n";
    print "Variance: ", $obj->getVariance(), "\n";
    exit(0);
}

print qq~
Statistics Calculator
Calculates several sets of statistics given a sequence of input numbers
Enter one value on each line 
To exit, press Ctrl - C
~;
while (1) {
    print ">> ";
    chomp(my $num = <STDIN>);
    $obj->addValue($num);
}
