#!/usr/bin/env perl

use v5.42;
use utf8;


say "if statements";
# https://www.perltutorial.org/perl-if/
# You can write if statements just like that
say "1 is true if(1 == true)";

# Unless works like if, but reversed
# All those == false
unless (0) {
    say "0 is false";
}
unless ("0") {
    say '"0" is false';
}
unless (my $a) {
    say "undefined is false";
}
unless (()) {
    say "() is false";
}
unless ("") {
    say '"" is false';
}
# All different ones will be == true

if (true) { say "if must be always followed by {}"};

my $num = 5;
# if elsif else
if ($num <  5) {
    say "< 5";
} elsif ($num > 5) {
    say "> 5";
} else {
    say "== 5";
}


say "\nGiven";
# https://www.perltutorial.org/perl-given/
my $color = "BLUE";
# Given works like switch
# given($color){
#     when("RED") { say "#FF0000"; };

#     default {
#         say "I don't know this color";
#     }
# }
say "it were removed in newer versions of perl";


say "\nFor and foreach";
# https://www.perltutorial.org/perl-for-loop/
# $_ - default var
for (1..20) {
    print "$_ ";
}print("\n");

# You also can specify an explicit iterator
for my $i (1..20) {
    print "$i ";
}print("\n");

# If you declare an iterator before loop it value will be restored
my $a = 10;
for $a (1..20) {
    print "$a ";
}print("\n");
say '$a value is ', $a;

# If you make any changes to the iterator, they will affect it's original values
my @b = 1..5;
say @b;
for (@b) {
    $_ = $_ * 2;
}say @b;

# You can also do C-style arrays
for (my $i = 1; $i <= 20; ++$i) {
    print "$i ";
}print("\n");


say "\nWhile";
# https://www.perltutorial.org/perl-while/
my $counter = 10;
while ($counter > 0) {
   print $counter--;
}
# continue block is executed after each iteration (used rarely)
continue {
    say $counter % 2 == 1 ? " Tick" : " Tack";
    sleep(1);
}
say "*BOOM!*";

# <> allows to get user input from command line
print "Please enter your credit card information per each line (ctrl-d) to exit:\n>";
my @credit_card_info;
while (my $input = <>) {
    print(">");
    chomp $input;
    push(@credit_card_info, $input);
}
say "So it's @credit_card_info? - Thanks";

# You also can write while loops like that
print $counter while (++$counter <= 10);
print("\n");

# There is also do while
# There is also 'next' that works the same as 'continue' keyword, but to make use of it with do
# statement, you must put it in a block and you can do this by just adding second braces {{}}
do {{
    --$counter;
    next if $counter % 2 == 0;
    print $counter;
}} while ($counter != 0);
print "\n";

# There is also until and do until
# There is also 'last' keyword what is the same as 'break'. Also must be in a block for do statements.
# You can specify which statement you want to leave with a label
# https://www.perltutorial.org/perl-last/
OUTER: until ($counter == 10) {
    foreach (@credit_card_info) {
        last OUTER if $counter == 5;
        print ++$counter;
    }
}
print "\n";
