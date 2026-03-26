#!/usr/bin/env perl

use v5.42;
use utf8;

# That task was to hard for me, couldn't solve it right
# without looking up answers :(
my $in = $ARGV[0];
unless (defined $in) {
  die "No argument were given";
}

my $out = $in;
$out =~ s/\Z/.out/;

my ($in_file, $out_file);
open $in_file, '<', $in or die "Could not open $in file: $!";
open $out_file, '>', $out or die "Could not open $out file: $!";

while (<$in_file>) {
  # print if (s/fred/Larry/gi);
  chomp;
  s/fred/\n/gi;
  s/wilma/Fred/gi;
  s/\n/Wilma/gi;
  print $out_file $_, "\n";
}
