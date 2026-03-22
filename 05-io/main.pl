#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;
binmode STDOUT, ':encode(UTF-8)';
binmode STDIN, ':encode(UTF-8)';


# Those two work the same inwoking block after each line of input
# while (defined(my $line = <STDIN>)) {
#     print "I saw $line";
# }

# while (<STDIN>) {
#     print "I saw $_";
# }

# This one inwokes block after the end-of-file code
# foreach (<STDIN>) {
#     print "I saw $_";
# }

say "ARGV is @ARGV";

# Diamond operator <> takes input from user's choice of input.
# You can run programm with filenames and it will use them as input
while (<>) {
  chomp;
  print "It was $_ that I saw!\n";
}

# Won't run external command if there is a special char such as |
# while (<<>>) {
#   chomp;
#   print "It was $_ that I saw!\n";
# }

# Getiot::Long and Getopt::Std modules

# To change the delimeter of interpolated ekements of an array
$" = ",xd, ";
my @a = 1..5;
say "@a";

print <>;          # implementation of /bin/cat
print sort <>;     # implementation of /bin/sort

# %g automaticaly chooses number type as needed
printf "%g %g %g\n", 5/2, 51/17, 51 ** 17;  # 2.5 3 1.0683e+29
# %d stands for decimal
printf "in %d days!\n", 17.85;  # in 17 days!
# x%x - hexidecimal
# 0%o - octal
printf "in 0x%x days!\n", 17;  # in Ox11 days!
printf "in 0%o days!\n", 17;  # in 021 days!
# number after % means column width to easly draw columns
printf "%6d\n", 42;  # output like ````42 (the ` symbol stands for a space)
# You can allign collimn to the left
printf "%-6d\n", 42;  # output like 42```` (the ` symbol stands for a space)
printf "%2d\n", 2e3 + 1.95;  # 2001
# %s interpolates a string
printf "%s\n", "wilma";  # looks like `````wilma
# %f rounds off its output as needed
printf "%12f\n", 6 * 7 + 2/3;    # looks like ```42.666667
printf "%12.3f\n", 6 * 7 + 2/3;  # looks like ``````42.667
printf "%12.0f\n", 6 * 7 + 2/3;  # looks like ``````````43
# %% to print precent
printf "Monthly interest rate: %.2f%%\n",
    5.25/12;  # the value looks like "0.44%
# %* accepts next input as a collumn width
printf "%*s", 10, "wilma\n";       # looks like `````wilma
# .* lets you to specify number of decimal places
printf "%*.*f\n", 6, 2, 3.1415926; # looks like ``3.14
printf "%*.*f\n", 6, 3, 3.1415926; # looks like `3.142
# For arrays you can create format strings on a fly
my @items = qw( wilma dino pebbles );
my $format = "The items are:\n" . ("%10s\n" x @items);
## print "the format is >>$format<<\n"; # for debugging
printf $format, @items;
printf "The items are:\n".("%10s\n" x @items), @items;


unless ( open my $LOG, '>>', 'logfile' ) {
    # die will terminate the program with the following message and non 0 code
    # $! returns error from the OS
    die "Cannot create logfile: $!";
}
open my $rocks_fh, '<', 'rocks.txt'
  or die "Could not open rocks.txt: $!";
# you can use `use autodie;` instead of writing those

# warn works as die but doesn't terminate the program
warn "hello!";
