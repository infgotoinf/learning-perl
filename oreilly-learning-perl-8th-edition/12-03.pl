#!/usr/bin/env perl

use v5.42;
use utf8;

foreach (@ARGV) {
  say $_, " is readable, writable and yours"  if -w -r -o $_;
}
