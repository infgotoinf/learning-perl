#!/usr/bin/env perl

use v5.36;



print "Scalars\n";
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
print $a          ." - Single variable is scalar\n";
print $b[0]       ." - Array [0] element is also scalar\n";
print $c{'first'} ." - Hash {'first'} element is also scalar\n";



print "\nLists\n";
# https://www.perltutorial.org/perl-list/
my @list = (1, 12, "lol", 3, "hi"); # Elements in list are separated by comma ,
print "lol", "no", 1, "t", 23, "\n"; # Elements separated by comma in print are displayed together
print @list, "\n"; # So if we try to print a list, all of it's elements will be displayed togeter

print "abc", "bcb", "cac", "\n";
# qw() (quote word) funtion allows to get a list of words using space as a delimeter
print qw(abc bcb cac), "\n";
# Similar with q/ and q// any non-alphanumeric character can be used as a delimeter
print qw/abc bcb cac/, "\n";

# If you put a list, called an internal list, inside another list,
# Perl automatically flattens the internal list
print (2,3,4,(5,6)); print ("\n");
print (2,3,4,5,6);   print ("\n");
print ((2,3,4),5,6); print ("\n");

print ((1, 2, 3, 4, 5, 6)[0, 3, 4], "\n"); # Access 0, 3, 4 elements of a list
print ((1..10), "\n");    # List from 1 to 10
print (("a".."z"), "\n"); # List from a to z
