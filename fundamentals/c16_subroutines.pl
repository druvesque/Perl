#!/usr/bin/perl -w 
sub sum(@) {
    # This subroutine takes a list of numbers as input and returns the sum
    my $sum = 0;
    for my $tmp (@_) {
        $sum += $tmp;
    }
    return $sum;
}
print sum 0 .. 50;
