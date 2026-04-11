#!/usr/bin/perl -w 
$stops = 0;
do {
    $stops++;
    print "Next stop? ";
    chomp($location = <STDIN>);
} until ($stops > 5 || $location eq 'home');
