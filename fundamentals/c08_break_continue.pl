#!/usr/bin/perl -w 
OUTER: for ($i = 1; $i <= 10; $i++) {
    INNER: for ($j = 1; $j <= 10; $j++) {
        if ($i * $j == 63) {
            print "$i times $j is 63!\n";
            last OUTER; # break
        }
        if ($j >= $i) {
            next OUTER; # continue
        }
    } 
}
