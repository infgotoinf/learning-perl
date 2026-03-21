#!/usr/bin/env perl

use v5.42;
use utf8;


my $pi = 3.14;

print "Enter the radius:\n>";
my $radius = <STDIN>;

my $circumfirence = 2 * $pi * $radius;
say "Circumferance is ", $circumfirence < 0 ? 0 : $circumfirence;
