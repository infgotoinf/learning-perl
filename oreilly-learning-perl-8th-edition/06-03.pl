#!/usr/bin/env perl

use v5.42;
use utf8;


my $len = 0;
$len = $len < length($_) ? length($_) : $len foreach (keys %ENV);

# say $len;

while ((my $key, my $val) = each %ENV) {
    printf "%-${len}s%s\n", $key, $val;
}
