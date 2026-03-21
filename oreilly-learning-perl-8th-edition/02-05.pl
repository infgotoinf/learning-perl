#!/usr/bin/env perl

use v5.42;
use utf8;

print "Enter a string:\n>";
my $string = <STDIN>;
print "Enter a number:\n>";
my $number = int <STDIN>;

say $string x $number;
