# copy linear search
@sortedArray = sort { $a <=> $b } @array;
$, = " ";
print @sortedArray;
print "\n\n";

$counter = 0; $hit = 0;
$start = 0; $end = $#sortedArray; $mid = 0;
$mid = sprintf("%d", ($start + $end)/2);
# write binary search
