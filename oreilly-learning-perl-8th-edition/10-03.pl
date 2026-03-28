#!/usr/bin/env perl

use v5.42;
use utf8;


$ENV{ALSDFO} = "loool";
$ENV{undfe} = undef;

my $len = 0;
$len = $len < length($_) ? length($_) : $len foreach (keys %ENV);

# say $len;

while ((my $key, my $val) = each %ENV) {
    # For some reason default value stays empty, but that's ok ig
    printf "%-${len}s%s\n", $key, $val // 'undefined value';
}
