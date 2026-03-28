#!/usr/bin/env perl

use v5.42;
use utf8;


use Module::CoreList;
my %modules = %{ $Module::CoreList::version{5.042} };

say "$_ - ", $modules{$_} // "" foreach (keys %modules);
