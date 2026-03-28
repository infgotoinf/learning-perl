#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;

# In perl beside
# last - that represents break
# next - that represents continue
# there is also 'redo'
foreach (1..10) {
  print "Iteration number $_.\n\n";
  print "Please choose: last, next, redo, or none of the above? ";
  chomp(my $choice = <STDIN>);
  print "\n";
  last if $choice =~ /last/i;
  next if $choice =~ /next/i;
  redo if $choice =~ /redo/i;
  print "That wasn't any of the choices... onward!\n\n";
}
print "That's all, folks!\n";

# Then you work with unusual loop, use labels
LINE: while (<>) {
  WORD: foreach (split) {
    last LINE if /__END__/;  # bail out of the LINE loop
    last WORD if /EOL/;      # skip the rest of the line
    ...
  }
}

# You can return default values on undef with //
foreach my $try ( 0, undef, '0', 1, 25 ) {
  print "Trying [$try] ---> ";
  my $value = $try // 'default';
  say "\tgot [$value]";
}

# Short curcuit opperators (and, or, ||, &&) work as follows:
# a or b  - if a is true,  then there is no reason to do b, cause it will be true  anyway
# a and b - if a is false, then there is no reason to do b, cause it will be false anyway
my ($m, $n) = (5, 10);
$m < $n and $m = $n;
