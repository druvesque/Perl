#!/usr/bin/perl -w 
use Fcntl ':seek';
sub getFileSize ($) {
    my $filename = $_[0];
    local *FILE;
    open FILE, "<$filename" or return undef;
    seek(FILE, 0, SEEK_END);
    my $size = tell(); # last filehandle read is FILE
    close FILE;
    return $size;
}

my $filename = $ARGV[0];
my $file1 = $ARGV[1];
my $file2 = $ARGV[2];
print "$filename $file1 $file2";
print "\n";
print "$filename\t\t", getFileSize($filename), " Bytes \n";
print "$file1\t\t", getFileSize($file1), " Bytes \n";
print "$file2\t\t", getFileSize($file2), " Bytes \n";
