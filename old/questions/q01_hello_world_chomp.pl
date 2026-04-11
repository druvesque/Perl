#!/usr/bin/perl -w 
$text = <STDIN>; 
print "before chomping: " . $text;
chomp($text);
print "after chomping: " . $text . "\n";
$x = "hello world";
chop($x);
print $x;
