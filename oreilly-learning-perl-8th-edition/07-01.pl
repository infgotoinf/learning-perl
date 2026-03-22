#!/usr/bin/env perl

use v5.42;
use utf8;

while(<>) {
  print $_ if (/\b[Ff]red\b/);
}
