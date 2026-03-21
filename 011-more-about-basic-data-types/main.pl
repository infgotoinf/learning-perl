#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;
# Acts like more detailed warnings.
# Can also be used as `perl -Mdiagnostics main.pl`
use diagnostics;


say 12.3 / 0.4;
say 12 - 9.5;
say int (9.5 - 12);
say 10 / 3;
# Modulus operator converts all numbers to integers before doing the operation
say 10.5 % 3.2;
say -10 % 3;
say 10.5 ** 3.2;
print "\n";

say "\x{2668}"; # Unicode character code
say "\N{SNOWMAN}"; # Unicode character name
print "\007"; # ASCII char keycode
print "\b"; # Backspace keycode
print "\e"; # Esc keycode
print "\cC"; # Cltr-C keycode
# \E to end
# Lowercase and upercase letters
say "\LLLOL\E", "\lP", "\Uno lol\E", "\up";
# Add backslash to any non word character
say "\Qlele lsl!sd 23.92 234\E";
# String multiplier also works like that
say "hello " x (1+2), "\t", 5 x 3.8;

# Perl automatically converts to expected type
say "12" * "3";
say "69_lol_meme_lol_228_337" / "3";
say "sdljf" + "12";

# To convert nondecimal number strings to numbers we can use hex() and oct()
hex('0xFF');
hex('FF');
oct('0xFF');

oct('0337');
oct('0o337');
oct('337');

oct('0b1010');
my $bits = "1010";
oct("0b$bits");

# With utf8 enabled you can use unicode names for variables
my $лютый_чел = "ыыы ёёё";
say $лютый_чел;

# Any regular operator can be used as an assignment one
my $num = 10;
$num //= 5;
$num **= 2;
$num %= 19;
my $sentence = "I'm ";
$sentence .= $num;

# We can use ${} to specify a scalar variable
my $what = "brontosaurus steak";
my $n = 3;
# print "fred ate $n $whats.\n";          # not the steaks, but the value of $whats
print "fred ate $n ${what}s.\n";        # now uses $what
print "fred ate $n $what" . "s.\n";     # another way to do it
print 'fred ate ' . $n . ' ' . $what . "s.\n"; # an especially difficult way

# You can create unicode character by their codepoint
my $alef  = chr( 0x05D0 );
my $alpha = chr( hex('03B1') );
my $omega = chr( 0x03C9 );
say "$alef $alpha $omega";
# And convert unicode characters to their codepoints
say ord($alef), ord($alpha), ord($omega);
