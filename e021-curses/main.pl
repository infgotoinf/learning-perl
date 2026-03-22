#!/usr/bin/env perl

# use v5.42;
use utf8;


use Curses::UI;
# create a new C::UI object
my $cui = Curses::UI->new( -clear_on_exit => 1,
                           -debug => $debug, );
# this is where we gloss over setting up all the widgets and data
# structures :)


$cui->dialog("Hello, world!");

my $yes = $cui->dialog(
    -message => "Hello, world?",
    -buttons => ['yes','no'],
    -values  => [1,0],
    -title   => 'Question',
);
if ($yes) {
    exit;
}

# start the event loop
$cui->mainloop;
