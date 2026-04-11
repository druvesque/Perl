#!/usr/bin/perl -w 
$NUM = 100;
$MAXINT = 5000;
srand();
print "Numbers Generated:\n(";
for $i (1 .. $NUM) {
    push @array, sprintf("%d", rand(1) * $MAXINT);
    print $array[$i-1];
    unless ($i == $NUM) { print ", "; }
}
print ")\n\n";

print "Please enter the number to search for >> ";
chomp($toSearch = <STDIN>);

$counter = 0; $hit = 0;
foreach $num (@array) {
    $counter++;
    if ($num = $toSearch) {
        print "\"$toSearch\" found at subscript ", $counter - 1, "\n";
        $hit = 1;
        last;
    }
}

if ($hit == 0) {
    print "\"$toSearch\" not found in array.\n";
}
print "Number of comparisons: $counter/", scalar(@array), "\n";
