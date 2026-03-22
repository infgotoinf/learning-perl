#!/usr/bin/env perl

use v5.42;
use utf8;

while(<>) {
  print $_ if (/\b(\w*([A-Z]+)([^A-Z\s]+)\w*|\w*\3\2\w*)\b/);
}
