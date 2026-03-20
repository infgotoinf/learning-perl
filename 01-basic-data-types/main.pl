#!/usr/bin/env perl

# It's a good practice to use those to avoid possible errors early
# use strict;
# use warnings;
# https://perldoc.perl.org/perlstyle
# But they are enabled automaticaly if you sfecify v5.36 or newer
use v5.36;
# This helps to handle utf8 strings
use utf8;

# 'my' keywoard means this variable is local
my $var;



say "Numbers";
# https://www.perltutorial.org/perl-numbers/
my $n = 123_456_789; # You can add _ in numbers so they're easier to read
print "123_456_789 = ", $n, "\n-\n";

# Integers
# Say is just like print but smaller and automaticaly puts \n at the end
say 124;
say -34;
say "0b1100 = ", 0b1100;   # Binary
say "0255   = ", 0225;     # Octal
say "0xABC  = ", 0xABC, "\n-"; # Hexidecimal

# Floats
say 228.69;
say "+13e-2 = ", +1.023e2;
say "-13E-2 = ", -1.023E2;



say "\nOperators";
# https://www.perltutorial.org/perl-operators/
# Basic operators: + - / * %
say "5**2 = ", 5**2; # Power of a number

# Bitwise operators:
# and &, or |, exclusive or ^ , not ~, shift right >>, shift left <<

# Comparison operators:
# == != < > <= >=
# Spaceship operator <=>
say "10 <=> 20 = ", 10 <=> 20;
say "10 <=> 10 = ", 10 <=> 10;
say "10 <=> 5  = ", 10 <=> 5;

# String operators
say "lol" eq "xd"  ," - eq  (equal)";
say "lol" ne "xd"  ," - ne  (not equal)";
say "lol" cmp "xd" ," - cmp (comparison)";
say "lol" lt "xd"  ," - lt  (lesser than)";
say "lol" gt "xd"  ," - gt  (greater than)";
say "lol" le "xd"  ," - le  (lesser than or equal)";
say "lol" ge "xd"  ," - ge  (greater than or equal)";

say "ye" . "s " . "of" . " course"; # . to concate strings
say "hello " x 4; # x NUM to repeat string that many times in perl
my $inp;
# chomp() removes last char in a string and returns a number of characters that were removed
# Usefull to deal with userinput to remove "\n"
say chomp($inp = <STDIN>); # <STDIN> used to get user input
say $inp;

# Logical operators: &&, ||, !, and, or, not



say "\nStrings";
# https://www.perltutorial.org/perl-string/

# Can be single and double-quoted
my $s1 = "string";
my $s2 = 'also string';

# q// and qq// act like single and double-quoted strings
my $s3 = q/string "string" string/;
my $s4 = qq/string 'string' string/;
say $s3;
say $s4, "\n-";

# but / can be replaced with any other special symbol
my $s5 = q^string STRING string^;

# String functions
say $s5         ." - original string";
say length($s5) ." - lenght()";
say uc($s5)     ." - uc()";
say lc($s5)     ." - lc()";

# Extracts substring from a string
say substr($s5, 7, 6);
say substr($s5, -6);
substr($s5, 7, 6, "StRinG"); # Replaces substring

# Returns position of the first occurence of the substring in the searched string
say index($s5, "ing");
# Just like index but searches from end
say rindex($s5, "ing");

# Other functions include
# chr     - Return ASCII or UNICODE character of a number
# crypt   - Encrypts passwords in one way fashion
# hex     - Converts a hexadecimal string to the corresponding value
# oct     - Converts a string to an octal number
# ord     - Returns the numeric value of the first character of a string
# reverse - Reverses a string
# sprintf - Formats string to be used with print()
