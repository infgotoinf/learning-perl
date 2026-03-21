#!/usr/bin/env perl

use v5.42;
use utf8;


my @person_list = qw(
    fred
    betty
    barney
    dino
    wilma
    pebbles
    bamm-bamm
);

chomp(my @input_numbers = <STDIN>);
foreach (@input_numbers) {
    say $person_list[($_ - 1)];
}
