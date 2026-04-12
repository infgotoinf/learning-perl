#!/usr/bin/env perl

use v5.42;
use utf8;
# use IO::Prompt;
use Term::ReadKey;

# while( prompt "next: ", -tyn1s=>0.2 ) {
#   print "You said '$_'\n";
# }
ReadMode 4; # Turn off controls keys
my $key;
while (not defined ($key = ReadKey(-1))) {
    # No key yet
}
print "Get key $key\n";
ReadMode 0; # Reset tty mode before exiting
