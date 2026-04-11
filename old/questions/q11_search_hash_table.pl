#!/usr/bin/perl -w
# Generating 100 integers
$NUM = 100;
$MAXINT = 5000; # 1 + the maximum integer generated
srand(); # initialize the randomize seed
print "Numbers Generated:\n(";
for $i (1 .. $NUM) {
    $valueToInsert = sprintf("%d", rand(1) * $MAXINT);
    $hash{$valueToInsert} = $i;
    print $valueToInsert;
    print ", " unless ($i == $NUM);
}
print ")\n\n";
print keys %hash;
print values %hash;
while ((%key, $val) = each %hash) {
    print "$key=$val";
    print "\n";
}
print "Please enter the number to search for >> ";
chomp($toSearch = <STDIN>);
# Hash search here
if (exists($hash{$toSearch})) {
    print "\"$toSearch\" found!\n";
}
else {
    print "\"$toSearch\" not found!\n";
}
