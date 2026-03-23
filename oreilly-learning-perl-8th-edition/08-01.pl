#!/usr/bin/env perl

use v5.42;
use utf8;


my $text = "beforematchafter";

say "$`>$&<$'" if $text =~ /match/;
