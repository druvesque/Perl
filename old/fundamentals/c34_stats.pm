package c34_stats;
# Create a new class instance (object) and return a reference of the object

sub new {
    my $arg0 = $_[0];
    my $cls = ref($arg0) || $arg0;
    my $this = {};
    bless $this, $cls;
    $this->clear();
    return $this;
}

sub clear {
    my $this = $_[0];
    $this->{'numlist'} = undef;
    $this->{'x_sum'} = 0;
    $this->{'x2_sum'} = 0;
}

# Append a value to the list
sub addValue {
    my $this = $_[0];
    my $num = $_[1];
    if (defined $num) {
        push @{$this->{'numlist'}}, $num;
        $this->{'x_sum'} += $num;
        $this->{'x2_sum'} += $num**2;
    }
}

# Calculate Total
sub getTotal {
    my $this = $_[0];
    return $this->{'x_sum'};
}

# Calculate mean
sub getMean {
    my $this = $_[0];
    my @numlist = @{$this->{'numlist'}};
    if (!@numlist) { return 0; }
    return $this->getTotal()/@numlist;
}

# Calculate variance
sub getVariance {
    my $this = $_[0];
    my @numlist = @{$this->{'numlist'}};
    my $n = @numlist;
    my $sum_x2 = $this->{'x2_sum'};
    my $sum_x = $this->{'x_sum'};
    if (!$n) {return 0;}
    return ($n * $sum_x2 - $sum_x**2)/($n**2);
}

# Calculate standard deviation
sub getStdDev {
    my $this = $_[0];
    return $this->getVariance() ** 0.5;
}

# Get list of values
sub getValueList {
    my $this = $_[0];
    return @{$this->{'numlist'}};
}
1;
