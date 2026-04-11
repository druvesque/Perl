#!/usr/bin/perl -w 
for ($i = 1; $i <= 10; $i++) {
    print "$i ";
}
print "\nHow old are you?";
$a = <STDIN>;
chomp($a);
while ($a > 0) {
    print "At one time, you were $a years old.\n";
    $a--;
}
