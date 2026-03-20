#!/usr/bin/env perl

use v5.42.0;

# Change programm name (litteraly changes process name)
$0 = "CoolApp";

use Gtk3 -init;
my $window = Gtk3::Window->new ('toplevel');
my $button = Gtk3::Button->new ('Quit');
$button->signal_connect (clicked => sub { Gtk3::main_quit });
$window->add ($button);
$window->show_all;
Gtk3::main;
