#!/usr/bin/perl -w
sub passArgs(\%$) {
    my ($hashref1, $hashref2) = @_;
    # exercise : use dereferencing and print the values
    # keys, values
    # single reference to hash table
    print $$hashref1{'key1'};
    print "\n";
    print ${$hashref1}{'key1'};
    print "\n";
    print $hashref1->{'key2'};
    print "\n";
    # not a double reference to hash table ?? why
    print $$hashref2{'key1'};
    print "\n";
    print ${$hashref2}{'key1'};
    print "\n";
    print $hashref2->{'key2'};
    print "\n";
}
%myhash = ('key1' => 'value1', 'key2' => 'value2');
passArgs(%myhash, \%myhash);
