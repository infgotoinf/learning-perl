#!/usr/bin/env perl

# It's a good practice to use those to avoid possible errors early
use strict;
use warnings;

# Scalars
# https://stackoverflow.com/questions/67292717/what-does-scalar-mean-in-perl

# In perl there sre 3 main types:
my $a = 1;         # Scalars (singele valued variables)
my @b = (1, 2, 3); # Arrays (arrays of scalars)
my %c = (          # Hashes (associative arrays of scalars (just like maps))
  first => 1,
  second => 2,
  third => 3,
);

# Special symbols ($, @, %) represent what we want to get,
# not with that we operate
print "$a - Single variable is scalar\n";
print "$b[0] - Array [0] element is also scalar\n";
print "$c{'first'} - Hash {'first'} element is also scalar\n";
