#!/usr/bin/perl -w   

print 'fred' . "\n";
print "coke\tsprite\n";
print "\"this string end with a double quote\" \n";
print "hello" . "world" . "\n";
print "hello" . ' ' . "world" . "\n";
print 'hello world' . "\n";

print 5 x 4 . "\n";
print "fred" x 3 . "\n";
print "z" . 5 * 7 . "\n"; 
print 12 * 3 . "\n";
print "15fred34" * 3 . "\n";

print length("abcd") . "\n";
$rev = reverse("abcd");
print $rev . "\n";

$string = "This is test.";
print substr($string, 5) . "\n";
print substr($string, 5, 2) . "\n";
substr($string, 8, 0, "not a ");
substr($string, 8, 0) = "not a ";
print $string . "\n";

