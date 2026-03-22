#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;

print "Enter your age:\n>";
if (chomp( my $input = <STDIN>)) {
    $_ = $input;
    say "You entered your age wrong!" unless /^[1-9]\d?$/;
}

# You can repeat groups by their number
$_ = "lol hellow ow";
say 'Yes' if (/.*(ow).*\1.*/);

# Group numbering start from \
$_ = "yabba dabba doo";
if (/y((.)(.)\3\2) d\1/) {
  print "It matched!\n";
}

# You can also use \g{} to specify a group
$_ = "aa11bb";
if (/(.)\g{1}11/) {
  print "It matched!\n";
}

# You can also use relative back references such as \g{-1}
# this on will use group right before it
$_ = "xaa11bb";
if (/(.)(.)\g{-1}11/) {
  print "It matched!\n";
}

# \s - means any space
# \h - means any horisontal space
# \v - means any vertical space
# \R - means any linebreak like for example \r\n
# \N - non newline
$_ = "fred  \t \t  barney";
if (/fred\h+barney/) {  # any whitespace
  print "It matched!\n";
}

# \p{PROPERTY} to mach any type of unicode character
if (/\p{Space}/) { # 25 different possible characters in v5.34
  print "The string has some whitespace.\n";
}
if (/\p{Digit}/) { # 650 different possible characters in v5.34
  print "The string has a digit.\n";
}

# \A matches at the absolute beginning of a string
if ( /\Ahttps?:/ ) {
  print "Found a URL\n";
}
# \z matches at the absolute end of a string
if ( /\.png\z/ ) {
  print "Found a URL\n";
}
# \Z does the same also allowing optional newline after it
while (<STDIN>) {
  print if /\.png\Z/;
}
# \B is the opposite of \b, selecting if it's not a word boundary
if ( /\bsearch\B/ ) {
}
