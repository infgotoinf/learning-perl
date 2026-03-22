#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;

# By default // search for matches, but you can use any other special symbol as
# m{} m() m!! m<>

# /i modifier make search case-insensitive
print "Would you like to play a game? ";
chomp($_ = <STDIN>);
if (/yes/i) {  # case-insensitive match
  print "In that case, I recommend that you go bowling.\n";
}

# /s make . also match \n
$_ = "I saw Barney\ndown at the bowling alley\nwith Fred\nlast night.\n";
if (/Barney.*Fred/s) {
  print "That string mentions Fred after Barney!\n";
}

# /x modifier makes spaces insignificant
# /xx makes them also insignificant in []

# /\w+/a   # A-Z, a-z, 0-9, _
# /\w+/u   # any Unicode word character
# /\w+/l   # The ASCII version, and word chars from the locale,
           # perhaps characters like Œ from Latin-9

# /k/aai   # only matches the ASCII K or k, not Kelvin sign
# /k/aia   # the /a's don't need to be next to each other
# /ss/aai  # only matches ASCII ss, SS, sS, Ss, not ß
# /ff/aai  # only matches ASCII ff, FF, fF, Ff, not ﬀ

# /l interpret string according to locale rules
my $OE = chr( 0xBC ); # get exactly what we intend
if (/$OE/li) {    # that's better
  print "Found $OE\n";
}

# /m turns on multiple matching

# =~ turns on matching of the pattern on the right against string on the left
my $some_other = "I dream of betty rubble.";
if ($some_other =~ /\brub/) {
  print "Aye, there's the rub.\n";
}

# With $0 you can use elements from captured groups
$_ = "Hello there, neighbor";
if (/(\S+) (\S+), (\S+)/) {
  print "words were $1 $2 $3\n";
}

# ?| operator in a capture group makes groups inside
# this group to not get captured into variables
# /
# (?|             # anything in here is $1
#   (F\w+) |
#   (P\d+) |
#   (Dino)
# )
# \s+
# (\w+)           # $2
# /x

# /n turns all () into noncapturing groups
if (/(bronto)?saurus (BBQ )?(steak|burger)/n) {
  print "It matched\n"; # there is no $1 now
}

# To call a labled capture group you use $+{}
my $names = 'Fred or Barney';
if ( $names =~ m/((?<name2>\w+) (and|or) (?<name1>\w+))/ ) {
  say "I saw $+{name1} and $+{name2}";
}

# You can use \k<> to refer to kables, of good olg \g{}
$names = 'Fred Flintstone and Wilma Flintstone';
if ( $names =~ m/(?<last_name>\w+) and \w+ \k<last_name>/ ) {
  say "I saw $+{last_name}";
}

# $` stores string before match
# $& stores the actual matched pattern
# $' stores string after match
if ("Hello there, neighbor" =~ /\s(\w+),/) {
  print "That was ($`)($&)($').\n";
}
if ("Hello there, neighbor" =~ /\s(\w+),/p) {
  print "That was (${^PREMATCH})(${^MATCH})(${^POSTMATCH}).\n";
}
