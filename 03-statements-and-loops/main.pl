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


print "\nWhile\n";
my $counter = 10;
while ($counter > 0) {
   print $counter--;
}
# continue block is executed after each iteration (used rarely)
continue {
    print $counter % 2 == 1 ? " Tick" : " Tack", "\n";
    sleep(1);
} print "*BOOM!*\n";

# <> allows to get user input from command line
print "Please enter your credit card information per each line (ctrl-d) to exit:\n>";
my @credit_card_info;
while (my $input = <>) {
    print(">");
    chomp $input;
    push(@credit_card_info, $input);
}
print "So it's @credit_card_info? - Thanks", "\n";

# You also can write while loops like that
print $counter while (++$counter <= 10);
print "\n";

# There is also do while
# There is also 'next' that works the same as 'continue' keyword, but to make use of it
# you must put it in a block and you can do this by just adding second braces {{}}
do {{
    --$counter;
    next if $counter % 2 == 0;
    print $counter;
}} while ($counter != 0);

# There is also until and do until
# There is also 'last' keyword what is the same as 'break'. Also must be in a block
until ($counter == 10) {
    if ($counter == 5) {
        last;
    }
    print ++$counter, "\n";
}
