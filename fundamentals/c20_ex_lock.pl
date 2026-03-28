#!/usr/bin/perl.pl -w 
@ARGV = ("file1", "file2");
use Fcntl ':flock';
open(FILE, ">>myfile.dat") or die "Cannot open myfile.dat!\n";
print "[$$] Request exclusive write lock for myfile.dat.\n";
flock(FILE, LOCK_EX);
print "[$$] Requested exclusive write lock for myfile.dat\n";
print "[$$] Writing (appending) to myfile.dat\n";

while (<>) {
    print "[$$] Writing $_\n";
    print FILE "$_ (process id $$)\n";
    sleep 1; # sleep one second
}

flock(FILE, LOCK_UN); # release lock
print "[$$] Released exclusive write lock for myfile.dat\n";
close FILE;
