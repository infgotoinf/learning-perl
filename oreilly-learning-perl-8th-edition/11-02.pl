#!/usr/bin/ebv perl

use v5.42;
use utf8;

use Time::Moment;

die "11-02.pl [YEAR] [MONTH]" if (@ARGV != 2);

my $then = Time::Moment->new(
        year  => $ARGV[0],
        month => $ARGV[1],
    );

my $now = Time::Moment->now;

say abs($then->year - $now->year), " years, ",
    abs($then->month - $now->month), " months";
