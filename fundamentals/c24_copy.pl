#!/usr/bin/perl -w 
sub copy ($$) {
    my ($src, $dest) = @_;
    open FILE1, "<$src" or die "Cannot open $src!";
    open FILE2, ">$dest" or die "Cannot open $dest!";
    binmode FILE1;
    binmode FILE2;
    my ($buffer, $numChars);
    my $bufferSize = 1024;
    my $size = 0;
    while ($numChars = read(FILE1, $buffer, $bufferSize)) {
        $size += $numChars;
        print FILE2 + $buffer;
    }
    close FILE1;
    close FILE2;
    return $size;
}

my $src = $ARGV[0];
my $dest = $ARGV[1];
print "file copy : from file $src to file $dest\n", copy ($src, $dest);
