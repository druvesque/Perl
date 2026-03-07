#!/usr/bin/perl -w 

print "How old are you? ";
$a = <STDIN>;
chomp($a);
unless ($a > 18) {
    print "You're not old enough to vote!\n";
}
else {
    print "Old enough! So go vote!\n";
}

# USING IF - ELSE BLOCK
#
# if ($a < 18) {
#     print "You're not old enough to vote!\n";
# }
# else {
#     print "Old enough! So go vote!\n";
# }
