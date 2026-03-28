#!/usr/bin/env perl

use v5.42;
use utf8;


my $rand_number = int(1 + rand(100));
print "Try guess the number!\n>";

while(<STDIN>) {
    chomp;
    state $debug;

    if (/\D/) {
        if (/debugon/i) {
            say "Debug info was turned on";
            $debug = 1;
        }
        elsif (/debugoff/i) {
            say "Debug info was turned off";
            $debug = undef;
        }
        elsif (/exit|quit|^\s*$/i) {
            say "Exitting the programm";
            exit;
        }
        else {
            say "Wrong input";
        }
    }
    else {
        if ($_ < $rand_number) {
            say "Too low!";
        }
        elsif ($_ > $rand_number) {
            say "Too high!";
        }
        else {
            say "Yay! it was $_, you won!";
            exit;
        }
    }

    if (defined $debug) {
        say "<random number is $rand_number>";
    }
    print ">";
}
# LOL litteraly the only usecase for this thing I could find.
# Use it, cause I don't want it to be skipped with 'next'.
# *edited*: litteraly don't use this anymore
# continue {
#   print ">";
# }
