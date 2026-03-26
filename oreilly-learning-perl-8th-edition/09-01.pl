#!/usr/bin/env perl

use v5.42;
use utf8;


my $what = 'fred|barney';
while (<>) {
  print if (/($what){3}/);
}
