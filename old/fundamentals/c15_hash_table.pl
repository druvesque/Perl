#!/usr/bin/perl -w 

#%Age = (Tom => 26, Peter => 51, Jones => 23);
#print $Age{Tom};
#print "\n";
#
#@temp = delete @Age{'Tom', 'Peter'};
#$, = " ";
#
#print "Deleted values:", @temp, "\n";
#print "Remaining keys:", keys %Age;

%array = (
          '3' => 'apple',
          '11' => 'orange',
          '5' => 'banana',
         );

@key = sort { $a <=> $b } keys %array; # ('3', '5', '11')
@value = sort { $a cmp $b } values %array; # ('apple', 'banana', 'orange')

$, = " ";
print @key;
print "\n";
$, = " ";
print @value;

