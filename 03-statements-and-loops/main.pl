#!/usr/bin/env perl

use v5.42;


print "is statements\n";
# You can write if statements just like that
print "1 is true\n" if(1 == true);

# Unless works like if, but reversed
# All those == false
unless (0) {
    print "0 is false", "\n";
}
unless ("0") {
    print '"0" is false', "\n";
}
unless (my $a) {
    print "undefined is false", "\n";
}
unless (()) {
    print "() is false", "\n";
}
unless ("") {
    print '"" is false', "\n";
}
# All different ones will be == true

if (true) { print "if must be always followed by {}", "\n"};

my $num = 5;
# if elsif else
if ($num <  5) {
    print "< 5", "\n";
} elsif ($num > 5) {
    print "> 5", "\n";
} else {
    print "== 5", "\n";
}


print "\nGiven\n";
my $color = "BLUE";
# Given works like switch
# given($color){
#     when("RED") { print "#FF0000", "\n"; };

#     default {
#         print "I don't know this color";
#     }
# }
print "it were removed in newer versions of perl", "\n";


print "\nFor and foreach\n";
# $_ - default var
for (1..20) {
    print "$_ ";
} print "\n";

# You also can specify an explicit iterator
for my $i (1..20) {
    print "$i ";
} print "\n";

# If you declare an iterator before loop it value will be restored
my $a = 10;
for $a (1..20) {
    print "$a ";
} print "\n";
print '$a value is ', $a, "\n";

# If you make any changes to the iterator, they will affect it's original values
my @b = 1..5;
print @b, "\n";
for (@b) {
    $_ = $_ * 2;
}
print @b, "\n";

# You can also do C-style arrays
for (my $i = 1; $i <= 20; ++$i) {
    print "$i ";
} print "\n";
