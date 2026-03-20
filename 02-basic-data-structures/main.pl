#!/usr/bin/env perl

use v5.36;
use utf8;


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
say $a          ." - Single variable is scalar";
say $b[0]       ." - Array [0] element is also scalar";
say $c{'first'} ." - Hash {'first'} element is also scalar";



say "\nLists";
# https://www.perltutorial.org/perl-list/
my @list = (1, 12, "lol", 3, "hi"); # Elements in list are separated by comma ,
say "lol", "no", 1, "t", 23; # Elements separated by comma in say are displayed together
say @list; # So if we try to say a list, all of it's elements will be displayed togeter

say "abc", "bcb", "cac";
# qw() (quote word) funtion allows to get a list of words using space as a delimeter
say qw(abc bcb cac);
# Similar with q/ and q// any non-alphanumeric character can be used as a delimeter
say qw/abc bcb cac/;

# If you put a list, called an internal list, inside another list,
# Perl automatically flattens the internal list
say (2,3,4,(5,6)); say ();
say (2,3,4,5,6);   say ();
say ((2,3,4),5,6); say ();

say ((1, 2, 3, 4, 5, 6)[0, 3, 4]); # Access 0, 3, 4 elements of a list
say ((1..10));    # List from 1 to 10
say (("a".."z")); # List from a to z



say "\nArray";
# https://www.perltutorial.org/perl-array/
# Array is a mutable list or, in other words, list in a variable
my @arr = qw(UwU OwO QwQ TwT :3);
say @arr[-2..-1]; # Last two elements
say $#arr;        # Operator $# returns last index of an array

$arr[0] = "XD";
@arr[1..4] = qw(o.O :3c >_< :P :D);
@arr[10] = "EEE";
@arr[7] = "OOO";
say @arr;

# Array operations
my @stack;
push(@stack, 10); # Add back
unshift(@stack, 12); # Add front
my @elem = pop(@stack); # Pop back
say @elem;
@elem = pop(@stack);
say @elem;

my @days = qw(Mon Tue Wed Thu Fri Sat Sun);
say sort(@days);
# Sort also accepts a block of code that allows to change the sort algorithm
# say sort {$days gt "Thu"} @days;



say "\nHash";
# https://www.perltutorial.org/perl-hash/
my %hash = (
    first => 'cool',
    second => 'guy',
    third => 'yay',
);
# You can also write hash like that
my %hash2 = qw(
    first cool
    second guy
    third yay
);
# You must use {} to access elements of a hash
say $hash2{'first'};

# keys() allows you to get a list of keys in scalars
for (keys %hash2) {
    # $_ - means "default variable"
    say "Elements $_ is $hash2{$_}";
}
