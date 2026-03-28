#!/usr/bin/perl -w 
use Fcntl ':flock'; # Fcntl::flock C++
open(FILE, "<myfile.dat") or die "Cannot open myfile.dat!\n";
print "[$$] Request shared read lock for myfile.dat.\n";
flock(FILE, LOCK_SH);
print "[$$] Requested shared read lock for myfile.dat.\n";
print "[$$] Reading from myfile.dat.\n";
while (<FILE>) {
    sleep 1;
    print $_;
}
flock(FILE, LOCK_UN); # release lock
print "[$$] Requested shared read lock for myfile.dat.\n";
close FILE;

