#!/usr/bin/perl -w 
@names = ('ALICE', 'tOm', 'JaSON', 'peter');
print join(', ', map { ucfirst(lc($_)); } @names), "\n";
print join(', ', map (ucfirst(lc($_)), @names)), "\n";
