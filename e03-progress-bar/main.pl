#!/usr/bin/env perl

use v5.42;
use utf8;

use Term::ProgressBar 2.00;
use constant MAX => 1_000_000;
my $progress = Term::ProgressBar->new({name => 'Powers', count => MAX, remove => 1});
$progress->minor(0);
my $next_update = 0;
for (0..MAX) {
    my $is_power = 0;
    for (my $i = 0; 2**$i <= $_; $i++) {
        $is_power = 1 if 2**$i == $_;
    }
    $next_update = $progress->update($_) if $_ >= $next_update;
}
$progress->update(MAX) if MAX >= $next_update;
