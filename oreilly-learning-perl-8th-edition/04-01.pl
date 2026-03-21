#!/usr/bin/env perl

use v5.42;
use utf8;


sub total {
    my $total;
    $total += $_ foreach @_;
    $total;
}


my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those numbers is $user_total.\n";

say &total(1..1000);



sub above_average {
    my $average = &total(@_) / @_;
    my @average;
    foreach (@_) {
        push(@average, $_) if $_ > $average;
    }
    @average;
}

@fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
