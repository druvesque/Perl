#!/usr/bin/perl -w

print "What temperature is it? ";
chomp($temperature = <STDIN>);
if ($temperature > 75) {
    print "Too hot!\n";
}
elsif ($temperature < 68) {
    print "Too cold!\n";
}
else {
    print "Just right!\n";
}
