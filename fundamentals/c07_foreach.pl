#!/usr/bin/perl -w 
@a = (1, 2, 3, 4, 5);
foreach $b (reverse @a) {
    print $b . " ";
}
print "\n";
# arrays and lists are inter convertible 
for ($i = 0; $i <= 4; $i++) {
    print $a[$i] . " ";
}
