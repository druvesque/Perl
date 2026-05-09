#!/usr/bin/perl -w 
# c36_testuniversal.pl
BEGIN {
    @INC = (@INC, './');
    # Add additional methods to UNIVERSAL
    require "c36_universal.pl";
}
use c36_test_object;
my $obj = new c36_test_object;
$obj->SUPER::initialize();
$obj->displayMessage("Hello World!\n");
