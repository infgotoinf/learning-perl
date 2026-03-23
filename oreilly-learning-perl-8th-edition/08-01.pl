#!/usr/bin/env perl

use v5.42;
use utf8;


my $text = "beforematchafter";

say "$`>$&<$'\n" if $text =~ /match/;

while (<>) {
if (/  (?<word>\w+a)\b  (?<after_word>.{1,5})?  /x) {
    print "$`>$&<$'";
    say "$+{after_word}" if ($+{after_word});
  }
}


while (<STDIN>) {
    if (/[ ]+$/) {
        print "$`>$&<$'";
    }
}
