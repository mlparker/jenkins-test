package Blah;

use Exporter qw(import);
use strict;
use warnings;

our @EXPORT = qw(to_uppercase remove_digits);

sub remove_digits {
    my $string = shift;

    $string =~ s/\d//g;

    return $string;
}

sub to_uppercase {
    return uc shift;
}

1;
