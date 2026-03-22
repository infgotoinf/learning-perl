#!/usr/bin/env perl

use v5.42;
use utf8;

use Term::UI;
use Term::ReadLine;
my $term = Term::ReadLine->new('brand');
my $reply = $term->get_reply(
                prompt => 'What is your favourite colour?',
                choices => [qw|blue red green|],
                default => 'blue',
);
my $bool = $term->ask_yn(
                    prompt => 'Do you like cookies?',
                    default => 'y',
            );
my $string = q[some_command -option --no-foo --quux='this thing'];
my ($options,$munged_input) = $term->parse_options($string);
### don't have Term::UI issue warnings -- default is '1'
$Term::UI::VERBOSE = 0;
### always pick the default (good for non-interactive terms)
### -- default is '0'
$Term::UI::AUTOREPLY = 1;
### Retrieve the entire session as a printable string:
my $hist = Term::UI::History->history_as_string;
$hist = $term->history_as_string;


my $str =   q[command --no-foo --baz --bar=0 --quux=bleh ] .
            q[--option="some'thing" -one-dash -single=blah' arg];
($options,my $munged) =  $term->parse_options($str);
### $options would contain: ###
$options = {
            'foo'       => 0,
            'bar'       => 0,
            'one-dash'  => 1,
            'baz'       => 1,
            'quux'      => 'bleh',
            'single'    => 'blah\'',
            'option'    => 'some\'thing'
};
### and this is the munged version of the input string,
### ie what's left of the input minus the options
$munged = 'command arg';
