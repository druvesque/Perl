#!/usr/bin/perl -w 
srand;
print "List of strings: ";
@b = <STDIN>;
chomp(@b);
print @b;
print "\n";

for ($i = 0; $i < 10; $i++) {
    print rand(@b);
    print "\n";
}

print "Answer: ". @b[rand(@b)];
print "\n";
