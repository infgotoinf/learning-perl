#!/usr/bin/env perl

use v5.42;
use utf8;


sub greet($who) {
    state @last_person;
    print "Hello $who!";
    if (@last_person) {
        say " @last_person were there!";
    } else {
        say " You're the first one to arrive!";
    }
    push @last_person, $who;
}

greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" )
