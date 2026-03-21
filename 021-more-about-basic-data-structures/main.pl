#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;
binmode STDOUT, "utf8";
use diagnostics;

# You if use range with floats, they'll be truncated
say 1.1..5.3;
say 5..1; # Empty, only counts uphill
# List delimeters can be different
my @arr = qw[ 1 32 54 32 ];
@arr = qw< 1 32 54 32 >;
@arr = qw{ 1 32 54 32 };
@arr = qw/ 1 32 54 32 /;
my @norm_arr = qw( 1 32 54 32 );

# There is also list assignment
(my $a, my $b) = (12, 4);
($a, $b) = ($b, $a);
# pop() returns the poped value
say pop(@arr) while (@arr);
push @arr, @norm_arr;
# shift() is the same as pop(), but starts from beginning
say shift(@arr) while (@arr);
unshift @arr, @norm_arr;
# splice() also returns a value
# second and third arguments - start and end point,
# forth - list that repleces those
say splice(@arr, 1, 2, @norm_arr);
splice(@arr, 1, 0, 69); # splice() can be used to insert elements
say @arr;
say "@arr"; # Interpolation on list automatically adds spaces
say $arr[1];
say $arr[1+2]; # Takes first number as an index

say reverse @arr;
my @sorted = sort 95..104;
say "@sorted";

@arr = 1..3;
$arr[32] = 12;
# List to scalar returns list size and $# - last element's index
say scalar @arr, " ", $#arr;
