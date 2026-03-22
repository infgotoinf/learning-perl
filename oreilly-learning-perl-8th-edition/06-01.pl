#!/usr/bin/env perl

use v5.42;
use utf8;


my %people = qw(
    fred flintstone
    barney rubble
    wilma flintston
);

chomp( my $name = <STDIN> );
say "$people{$name}";
