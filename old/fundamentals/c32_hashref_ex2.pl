#!/usr/bin/perl -w
sub somesub(%) {
    my %params = shift;
    my $filename = $params{'FILE'};
    my @args = @{$params{'ARGS'}};
    # exercise : use dereferencing and print the values
    print $filename . "\n";
    print $$args[0] . "\n";
    print ${$args}[1] . "\n";
    print $args->[0] . "\n";
}
%hash = ('FILE' => '/ls', 'ARGS' => @('-l', 'R'));
somesub(%hash);
