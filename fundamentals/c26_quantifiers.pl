#!/usr/bin/perl -w 
$string = $ARGV[0];
my $retval = ($string =~ m/^(\+|\-){0,1}(0|1|2|3|4|5|6|7|8|9){0,}(0|2|4|6|8)$/);
printf("$string is %s an even integer.\n", $retval ? ' ' : ' not ');

$retval = ($string =~ m/^[+-]?[0123456789]*[02468]$/);
printf("$string is %s an even integer.\n", $retval ? ' ' : ' not ');

$retval = ($string =~ m/^[+-]?[0-9]*[02468]$/);
printf("$string is %s an even integer.\n", $retval ? ' ' : ' not ');

$retval = ($string =~ m/^[+-]?\d*[02468]$/);
printf("$string is %s an even integer.\n", $retval ? ' ' : ' not ');
