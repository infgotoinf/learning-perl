#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;
use diagnostics;


# Some people use !! to comvert statements to just 0 and 1
my $false = !! '0';
unless ( defined(my $a) ) {
    say "a is undefined";
}
my $undef = undef; # There is also undef operator

# You can define iterator in foreach()
foreach my $num (1..5) {
    print $num;
}
print "\n";

# You actually can write ... as a placeholder
# foreach (1..10) {
#     ...
# }
# By default many commands use $_ default variable
foreach (1..5) { print };
print "\n";

# each operator can be used with arrays and hashes
my @letter = "a".."g";
while( (my $i, my $val) = each @letter ) {
    say "$i: $val";
}
