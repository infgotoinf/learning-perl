#!/usr/bin/env perl

use v5.42;
use utf8;

my $ARG = shift @ARGV;
my $old = -M $ARG;
foreach (@ARGV) {
  if (-M $_ > $ARG) {
    $ARG = $_;
    $old = -M $_;
  }
}

say $ARG, ": ", $old, " days";
