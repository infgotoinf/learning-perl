#!/usr/bin/env perl

use v5.42;
use utf8;

# while(<>) {
#   print $_ if (/.*(\bfred\b).*(\bwilma\b).*|.*\2.*\1.*/);
# }

while(<>) {
  print if (/\bfred\b/ and /\bwilma\b/);
}
