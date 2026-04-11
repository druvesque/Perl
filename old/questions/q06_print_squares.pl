#!/usr/bin/perl -w 
for ($number = 2; $number <= 32; $number++) {
    $square = $number * $number;
    printf "Number: $number, Square: $square";
    print "\n";
}

# with list
# foreach $number (2..32) {
#     $square = $number * $number;
#     printf"Number: $number, Square: $square";
# }
