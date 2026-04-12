#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;

my $date = `date`;
say $date;

my $ls = `ls ..`;
say $ls;

my $who = `who`;
say $_ foreach split /\s+/, $who;

# my $ping = `ping google.com`;
# my $ping = qx'ping google.com';



defined( my $pid = fork ) or die "Cannot fork: $!";
my $ping;
sub say_goodbye {
    say "\nbye";
    # die $ping;
}
unless ($pid) {
    $ping = `ping goole.com`;
}

# sleep 1;
# kill 2, $pid or die "Cannot SIGINT $pid: $!";

$SIG{'INT'} = 'say_goodbye';
# say $ping;

waitpid $pid, 0;
