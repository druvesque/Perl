# universal.pl - Contains definitions to add to UNIVERSAL class
package UNIVERSAL;
sub new {
    my $cls = ref($_[0]) || $_[0];
    my $this = bless {}, $cls;
    $this->initialize();
    return $this;
}

sub initialize {
    # defaults to no-op
    # override to execute class-specific startup code
    print "I am here\n";
}
1;
