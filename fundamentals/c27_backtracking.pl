#!/usr/bin/perl -w
$string = 'Telephone: 1234-5678';
if ($string =~ m/^Telephone:\s*(\d{4}-\d{4})$/) {
    print "The telephone number extracted is '$1'.\n";
}

$string = 'Telephone: (852) 1234-5678';
if ($string =~ m/^Telephone:\s*(\((\d+)\)\s*(\d{4}-\d{4}))$/) {
    print "The telephone number extracted is '$1'.\n";
    print "The country code extracted is '$2'.\n";
    print "The local phone number extracted is '$3'.\n";
}

$string = 'Telephone: 1234-5678';
if ($string =~ m/(\d{4})/g) {
    print "'$1' found at position " . (pos($string) - length($1)) . ".\n";
}

$str = "ABcd";
if ($str =~ m/abc/i) {
    print "match!\n";
}
else {
    print "no match!\n";
}
