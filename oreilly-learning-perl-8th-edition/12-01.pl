#!/usr/bin/env perl

use v5.42;
use utf8;


foreach (@ARGV) {
  say $_, " is...";

  if (-e $_) {
    say "Readable!" if -r $_;
    say "Writable!" if -w $_;
    say "Executable!" if -x $_;
  }
  else {
    say "Does not exist!";
  }

  say "";
}
