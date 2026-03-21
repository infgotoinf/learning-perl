#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;
use diagnostics;


# Some people use !! to comvert statements to just 0 and 1
my $false = !! '0';
unless ( defined(my $a) ) {
    say "a is undefined";
}
my $undef = undef; # There is also undef operator
