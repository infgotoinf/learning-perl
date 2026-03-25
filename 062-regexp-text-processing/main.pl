#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;

# s/// used to replace strings
$_ = "He's out bowling with Barney tonight.";
s/Barney/Fred/;  # Replace Barney with Fred
print "$_\n";

$_ = "fred flintstone";
if (s/fred/wilma/) {
  print "Successfully replaced fred with wilma!\n";
}

# /g lets you replace all accurences of the pattern, not just one
$_ = "home, sweet home!";
s/home/cave/g;
print "$_\n";  # "cave, sweet cave!"

# Using other delimeters with s/// is a little bit different and
# you also can combine different ones togeter
# s{fred}{barney};
# s[fred](barney);
# s<fred>#barney#;

# You also can use /i /x /m /s with s///
# s#wilma#Wilma#gi;  # replace every WiLmA or WILMA with Wilma

# If you want to have original and modified strong at the same time,
# you can do this like that
my $original = 'Fred ate 1 rib';
(my $copy = $original) =~ s/\d+ ribs?/10 ribs/;

# You can also use /r flag that makes so s/// returns modifyed copy of the string,
# not the number of substitutions made
my $copy = $original =~ s/\d+ ribs?/10 ribs/r;
# The difference here from the previous one is that we first do the substitution
# and then the assignment
