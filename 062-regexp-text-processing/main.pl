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
say $original;

# You can also use /r flag that makes so s/// returns modifyed copy of the string,
# not the number of substitutions made
$copy = $original =~ s/\d+ ribs?/10 ribs/r;
say $original;
# The difference here from the previous one is that we first do the substitution
# and then the assignment


# \U make all words upercased
# \L lowercased
# \E to end formatting
$_ = "I saw barney with fred.";
s/(\w+) with (\w+)/\U$2\E with $1/i;  # $_ is now "I saw FRED with barney."
say $_;

# \u to make only next character upercased
# \l lowercased
s/(fred|barney)/\u$1/ig;  # $_ is now "I saw FRED with Barney."
say $_;

# \u\L will make all words lowercased with uppercased first letter
s/(fred|barney)/\u\L$1/ig;  # $_ is now "I saw Fred with Barney."
say $_;

# \Q will quote all meta characters after it
if ( s/\Q(((\E(Fred)/$1/ ) {   # Even less messy
  print "Cleansed $1\n";
}

# split() creates an array by sperating
my @fields = split /:/, "abc:def:g:h";  # gives ("abc", "def", "g", "h")

# -1 as a 3rd argument saves trailing spaces at the end
@fields = split /:/, ":::a:b:c:::";  # gives ("", "", "", "a", "b", "c")
@fields = split /:/, ":::a:b:c:::", -1;  # gives
# ("", "", "", "a", "b", "c", "", "", "")

# Join joins arrays in one string separated by a separator
my $x = join ":", 4, 6, 8, 10, 12;  # $x is "4:6:8:10:12
say $x;

# TODO: Understand (195 page)
my $text = "Fred dropped a 5 ton granite block on Mr. Slate";
my @words = ($text =~ /([a-z]+)/ig);
print "Result: @words\n"; # Result: Fred dropped a ton granite block on Mr Slat

# By default .* is greedy that means it takes as much as it can
# you can use .*? to make it nongreedy
$text = '<b>Fred</b> and <b>Barney</b>';
my $match_count = $text =~ s|<b>(.*)</b>|\U$1|g;
print "$match_count: $text\n";

$text = '<b>Fred</b> and <b>Barney</b>';
$match_count = $text =~ s|<b>(.*?)</b>|\U$1|g; # nongreedy
print "$match_count: $text\n";

# ??     Least of zero or one match
# *?     Zero or more, as few as possible
# +?     One or more, as few as possible
# {3,}?  At least three, but as few as possible
# {3,5}? At least three, as many as fve, but as few as possible

# By default in regexp boundary \b works wierd
my $string = "This doesn't capitalize correctly.";
$string =~ s/\b(\w)/\U$1/g;
print "$string\n";

# You can make boundary smarter by using \b{wb} (word boundary)
$string = "This doesn't capitalize correctly.";
$string =~ s/\b{wb}(\w)/\U$1/g;
print "$string\n";

# \b{sb} that is sentence boundary, uses a set of rules to guess if punctuation
# is at the end of a sentence or is it a punctuation like in Mr. Flintstone
# \b{lb} indicates a good place to break text, so you don't wrap line in a middle of a word,
# it knows there to insert newlines

# //m makes multiline so ^ $ apply to each line
