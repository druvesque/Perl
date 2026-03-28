#!/usr/bin/perl -w 
# context sensitive search
# scalar - search for a substring in a string and return offset
# list - search for a substring in a list of strings and return matched strings
sub search {
    my $substr = shift;
    if (wantarray()) {
        my @values = @_;
        my @retval = ();
        foreach (@values) {
            my $index = index($_, $substr);
            push @retval, (($index >= 0)?$_:());
        }
        return @retval;
    }
    else {
        my $value = shift;
        my $index = index($value, $substr);
        return ($index >= 0)?$index:-1;
    }
}

my $scalar = 'deliquency';
my $substr = 'que';
my $search1 = search($substr, $scalar);
print $substr, $search1>=0? " " : ' not ', "found in $scalar\n";

$substr = 'san';
$search1 = search($substr, $scalar);
print $substr, $search1>=0? " " : ' not ', "found in $scalar\n";

my @items = ('systematic', 'system');
$substr = 'tic';
my @search2 = search($substr, @items);
$, = "\n";
print "$substr found in the following items:\n@search2\n";

$substr = 'stem';
@search2 = search($substr, @items);
print "$substr found in the following items:\n@search2\n";

$substr = 'san';
@search2 = search($substr, @items);
print "$substr found in the following items:\n@search2\n";


