#!/usr/bin/env perl

# It's a good practice to use those to avoid possible errors early
# use strict;
# use warnings;
# https://perldoc.perl.org/perlstyle
# But they are enabled automaticaly if you sfecify v5.36 or newer
use v5.36;

# 'my' keywoard means this variable is local
my $var;



print "\nNumbers\n";
# https://www.perltutorial.org/perl-numbers/
my $n = 123_456_789; # You can add _ in numbers so they're easier to read
print "123_456_789 = ", $n, "\n-\n";

# Integers
print 124, "\n";
print -34, "\n";
print "0b1100 = ", 0b1100, "\n";   # Binary
print "0255   = ", 0225, "\n";     # Octal
print "0xABC  = ", 0xABC, "\n-\n"; # Hexidecimal

# Floats
print 228.69, "\n";
print "+1.023e2 = ", +1.023e2,"\n";
print "-1.023E2 = ", -1.023E2,"\n";



print "\nOperators\n";
# https://www.perltutorial.org/perl-operators/
# Basic operators: + - / * %
print "5**2 = ", 5**2, "\n"; # Power of a number

# Bitwise operators:
# and &, or |, exclusive or ^ , not ~, shift right >>, shift left <<

# Comparison operators:
# == != < > <= >=
# Spaceship operator <=>
print "10 <=> 20 = ", 10 <=> 20, "\n";
print "10 <=> 10 = ", 10 <=> 10, "\n";
print "10 <=> 5  = ", 10 <=> 5, "\n";

# String operators
print "lol" eq "xd"  ," - eq  (equal)\n";
print "lol" ne "xd"  ," - ne  (not equal)\n";
print "lol" cmp "xd" ," - cmp (comparison)\n";
print "lol" lt "xd"  ," - lt  (lesser than)\n";
print "lol" gt "xd"  ," - gt  (greater than)\n";
print "lol" le "xd"  ," - le  (lesser than or equal)\n";
print "lol" ge "xd"  ," - ge  (greater than or equal)\n";

print "ye" . "s " . "of" . " course\n"; # . to concate strings
print "hello " x 4, "\n"; # x NUM to repeat string that many times in perl
my $inp;
# chomp() removes last char in a string and returns a number of characters that were removed
# Usefull to deal with userinput to remove "\n" 
print chomp($inp = <STDIN>), "\n"; # <STDIN> used to get user input
print $inp;

# Logical operators: &&, ||, !, and, or, not 



print "\nStrings\n";
# https://www.perltutorial.org/perl-string/

# Can be single and double-quoted
my $s1 = "string";
my $s2 = 'also string';

# q// and qq// act like single and double-quoted strings
my $s3 = q/string "string" string/;
my $s4 = qq/string 'string' string/;
print $s3, "\n";
print $s4, "\n-\n";

# but / can be replaced with any other special symbol
my $s5 = q^string STRING string^;

# String functions
print $s5         ." - original string\n";
print length($s5) ." - lenght()\n";
print uc($s5)     ." - uc()\n";
print lc($s5)     ." - lc()\n";

# Extracts substring from a string
print substr($s5, 7, 6), "\n";
print substr($s5, -6), "\n";
substr($s5, 7, 6, "StRinG"); # Replaces substring

# Returns position of the first occurence of the substring in the searched string
print index($s5, "ing"), "\n";
# Just like index but searches from end
print rindex($s5, "ing"), "\n";

# Other functions include
# chr     - Return ASCII or UNICODE character of a number
# crypt   - Encrypts passwords in one way fashion
# hex     - Converts a hexadecimal string to the corresponding value
# oct     - Converts a string to an octal number
# ord     - Returns the numeric value of the first character of a string
# reverse - Reverses a string
# sprintf - Formats string to be used with print()
