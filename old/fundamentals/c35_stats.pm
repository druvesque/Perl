# c35_stats.pm - Derived "c34_stats" with some functionalities added
package c35_stats;
#BEGIN {
#@INC = (@INC, '/.');
#}
@ISA = ('c34_stats'); # inherit c34_stats
use c34_stats;
# Note that by using the 2 - argument form of bless() the 
# constructor can also be inherited - Override addValue()

sub addValue() {
    my ($this, $num) = @_;
    if (!defined $this->{'min'}) {
        $this->{'min'} = $num;
        $this->{'max'} = $num;
    }
    else {
        $this->{'min'} = ($num < $this->{'min'}) ? $num : $this->{'min'};
        $this->{'max'} = ($num > $this->{'max'}) ? $num : $this->{'max'};
    }
    # invoke the base class version of addValue() 
    $this->SUPER::addValue($num); # OR $this->c34_stats::addValue($num)
}

# Find minimum
sub getMinimum {
    my $this = $_[0];
    return $this->{'min'};
}

# Find maximum
sub getMaximum {
    my $this = $_[0];
    return $this->{'max'};
}

1;
