#!/usr/bin/env perl

use v5.42;
use utf8;


# sub width_input($width, @input) {
#     my @ret_list;
#     foreach (@input) {
#         push @ret_list, $width, $_;
#     }
#     @ret_list;
# }

# \n adds 1 extra character, that shifts the column
# we don't want that!
chomp( my @input = <STDIN> );
my $width = int shift @input;
# say $width, " ", $width/10;
printf "%s\n". ("%${width}s\n" x @input),
    1234567890 x ($width / 10 + 1)
    ,@input
    # ,&width_input($width + 1, @input)
