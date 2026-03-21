#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;
# use diagnostics;


my $counter = 0;
sub say_hello {
    say "hello ", ++$counter, "!";
}

# Subroutines must be called with &
&say_hello;
&say_hello;
&say_hello;

sub add_to_counter {
    ++$counter; # Last performed calculation is the return value
}

say &add_to_counter;
say &add_to_counter;
say &add_to_counter;
say "";

sub max {
    my $max = shift @_;
    foreach (@_) {
        if ($_ > $max) {
            $max = $_;
        }
    }
    $max;
}

say &max(1, 2);
say &max(5, 2, 12, 4, 3, 0);

sub find {
    my ($num, @arr) = @_;
    for (0..$#arr) {
        if ($num == $arr[$_]) {
            return $_;
        }
    }
    -1;
}

say &find(4, (34, 9, 2, 4, 3, 22));

sub func {
    state $n = 0; # `state` is the same as static
    say "You called this function ", ++$n, " times!";
}

&func;
&func;
&func;

# You can also move variable declaration inside the braces after sub's name
# you can also specify defaults in them
# $= means an optional argument
sub min ($a = 0, $b = 1, $=) {
    $a < $b ? $a : $b;
}

say &min(12, 2);

# Prototypes
sub sum :prototype($$) { $_[0] + $_[1] };
# & can be omitted if there is no builtin function with such name
# () can also be omitted
say sum 2, 3;
