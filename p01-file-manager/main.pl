#!/usr/bin/env perl

use v5.42;
use utf8;
use autodie;
binmode STDIN, ":encoding(UTF-8)";
binmode STDOUT, ":encoding(UTF-8)";


sub prompt_a_filename {
  print "Enter filename:\n>";
  chomp( my $file_name = <STDIN> );
  $file_name;
}

sub create_file {
  my $file_name = prompt_a_filename();

  # Fun story: while I were testing this script, I acciedentaly
  # removed it like that and had to write it from the scratch!
  # Check if file does not exist
  unless (-e $file_name) {
    unless (open( my $file, ">", $file_name)) {
      say "Could not open file! $!";
    }
    else {
      say "Enter file contents:";
      my $input = <STDIN>;
      print $file $input;
      close($file);
    }
  }
  else {
    say "File already exists!";
  }
}

sub read_file {
  my $file_name = prompt_a_filename();
  unless (open( my $file, "<", $file_name)) {
    say "File doesn't exist!";
  }
  else {
    while (<$file>) {
      print $_;
    }
  }
}


while (true) {
  say '[1] - Read a file';
  say '[2] - Create a file';
  say '[0] - Exit';
  print '>';

  my $input = <STDIN>;

  if ($input == 1) {
    read_file();
  }
  elsif ($input == 2) {
    create_file();
  }
  elsif ($input) {
    exit;
  }
}
