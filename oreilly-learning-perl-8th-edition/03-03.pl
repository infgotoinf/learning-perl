#!/usr/bin/env perl

use v5.42;
use utf8;


chomp(my @input = <STDIN>);
@input = sort @input;

# $_ .= "lol" foreach (@input);

say "@input";
say foreach (@input);
