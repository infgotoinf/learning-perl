#!/usr/bin/env perl

use v5.42;
use utf8;

my %words;
while (<STDIN>) {
    chomp($_);
    ++$words{$_};
}

foreach my $key (sort keys %words) {
    say $key, ": ", $words{$key};
}
