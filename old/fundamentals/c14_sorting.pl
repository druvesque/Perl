#!/usr/bin/perl -w 

$, = ' ';
@list = (1, 10, 2, 20, 50, 40, 30);
@sorted = sort { $a <=> $b } @list;
print @sorted;
print "\n";

@sorte = sort { $b <=> $a } @list;
print @sorte;
print "\n";

@alphanum = ('bear', '20', 'Post', 'ant', '20ant');
@sorted1 = sort { $a cmp $b } @alphanum;
print @sorted1;
print "\n";

@sorted2 = sort { $b cmp $a } @alphanum;
print @sorted2;
print "\n";

@a = qw(fred barney betty wilma);
print @a;
print "\n";

