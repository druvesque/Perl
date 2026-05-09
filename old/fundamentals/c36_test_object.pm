# TestObject.pm - Test class module
package c36_test_object;
sub initialize {
    print "TestObject::initialize()\n";
    $this->{'a'} = 6;
    print $this->{'a'} . "\n";
}
sub displayMessage {
    my ($this, $msg) = @_;
    print $msg;
    # print $this->{'a'} . "\n";
}
1;
