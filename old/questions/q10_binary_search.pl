#!/usr/bin/perl -w 
# copy linear search
@sortedArray = sort { $a <=> $b } @array;
$, = " ";
print @sortedArray;
print "\n\n";

$counter = 0; $hit = 0;
$start = 0; $end = $#sortedArray; $mid = 0;
$mid = sprintf("%d", ($start + $end)/2);

# write binary search
# first sort it in ascending order

@sortedArray = sort { $a <=> $b } @array;
$, = " ";
print @sortedArray;
print "\n\n";

$counter = 0; $hit = 0;
$start = 0; $end = $#sortedArray; $mid = 0;
$mid = sprintf("%d", ($start + $end) / 2);

while ($start <= $end) {
    $counter++;
    print "Searched: ", $sortedArray[$mid]; # which element is being searched
    print " in #[$start, $end] ["; # the subscript range
    print $sortedArray[$start], ", ", $sortedArray[$end], "] \n";
    if ($sortedArray[$mid] == $toSearch) {
        # a hit!
        # Binary search code continued here
        print "\n\"$toSearch\" found!\n";
        $hit = 1;
        last;
    }
    elsif ($sortedArray[$mid] > $toSearch) {
        # decrease upper boundary -> mid value
        $end = $mid - 1;
    }
    else {
        # update lower boundary -> mid value
        $start = $mid + 1;
    }
    $mid = sprintf("%d", ($start + $end) / 2);
}

if ($hit = 0) {print "\n\"$toSearch\" not found in array.\n";}
print "Number of comparisons: ", $counter, "/", scalar(@sortedArray), "\n";
