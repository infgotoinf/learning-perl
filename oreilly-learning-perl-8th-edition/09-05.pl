# That's too smart for me holy cow, but I guess I understood

#  To keep from adding the copyright twice, we have to make two passes over the
# files. First, we’ll make a “set” with a hash where the keys are the filenames and the
# values don’t matter (although we’ll use 1 for convenience):
my %do_these;
foreach (@ARGV) {
  $do_these{$_} = 1;
}

# Next, we’ll examine the files and remove from our to-do list any file that already
# contains the copyright. The current filename is in $ARGV, so we can use that as the
# hash key:
while (<>) {
  if (/\A## Copyright/) {
    delete $do_these{$ARGV};
  }
}

# Finally, it’s the same program as before, once we’ve reestablished a reduced list of
# names in @ARGV:
@ARGV = sort keys %do_these;
$^I = ".bak";           # make backups
exit unless @ARGV; # no arguments reads from standard input!
while (<>) {
  if (/\A#!/) {         # is it the shebang line?
    $_ .= "## Copyright (c) 20XX by Yours Truly\n";
  }
  print;
}
