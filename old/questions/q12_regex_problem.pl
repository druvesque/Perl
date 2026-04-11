#!/usr/bin/perl -w
$string = "aaaabbbbbbbbbbb";
if ($string =~ m/a+b*/) {
    print "pattern atleast one a followed by any number of b matched\n";
}
else {
    print "pattern did not match\n";
}

$string1 = "\\\\\\\\\\**********";
if ($string1 =~ m/\\*\**/) {
    print "Pattern any number of backlash and any number of asterisks matched\n";
}
else {
    print "Not matched\n";
}

$string2 = "johnjohnjohn";
$whatever = "john";
$retval2 = ($string2 =~ m/($whatever){4}/); 
printf("$string2 %s matches\n", $retval2 ? ' ' : ' not ');

$string3 = "abc\nab";
$retval3 = ($string3 =~ m/(.|\n){5}/);
printf("$string3 %s matches\n", $retval3 ? ' ' : ' not ');

$string4 = "aa  aa    aa";
my $retval4 = ($string4 =~ m/(^|\s)(\S+)(\S+\2)+(\s|$)/);
printf("$string4 %s matches\n", $retval4 ? ' ' : ' not ');
