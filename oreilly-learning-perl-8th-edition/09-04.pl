#!/usr/bin/env perl

use v5.42;
use utf8;


$^I = ".bak";
while (<>) {
  s/(\A#!.*?\n)/$1## Copyright (C) 2026 by Me\n/;
  print;
}
