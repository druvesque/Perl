#!/usr/bin/perl -w 
@list = <STDIN>;
chomp(@list);
print @list . "\n";

# Approach 1
foreach $i (@list) {
    if ( ($i =~ m/a/i) && ($i =~ m/e/i) && ($i =~ m/i/i) && ($i =~ m/o/i) && ($i =~ m/u/i)) {
        print "In order a, e, i, o, u in $i\n";
    }
    else {
        print "Not in order a, e, i, o, u in $i\n";
    }
}

# Approach 2
# $matched = 0;
# foreach $i (@list) {
#     if ( ($i =~ m/a.*e.*i.*o.*u.*/i) ) {
#         print "$i matched";
#         print "\n";
#         $matched = 1;
#         last;
#     }
# }
# if ($matched != 1) {
#     print "\n pattern not matched with the RE \n";
# }

# Approach 3
# foreach $i (@list) {
#     if ( ($i =~ m/^[^aeiou]*a+[^eiou]*e+[^aiou]*i+[^aeou]*o+[^aeiu]*u+[^aeio]*$/i) ) {
#         print "$i";
#         print "\n";
#     }
# }
