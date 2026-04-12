
#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;


my $filename = $ARGV[0];

# -e checks if file exists
say "Oops! A file called '$filename' already exists."
  if -e $filename;

# -M returns time since last file modification in float days
say -M $filename;

# -r  File or directory is readable by this (efective) user or group
# -w  File or directory is writable by this (efective) user or group
# -x  File or directory is executable by this (efective) user or group
# -o  File or directory is owned by this (efective) user
# -R  File or directory is readable by this real user or group
# -W  File or directory is writable by this real user or group
# -X  File or directory is executable by this real user or group
# -O  File or directory is owned by this real user
# -e  File or directory name exists
# -z  File exists and has zero size (always false for directories)
# -s  File or directory exists and has nonzero size (the value is the size in bytes)
# -f  Entry is a plain fle
# -d  Entry is a directory
# -l  Entry is a symbolic link
# -S  Entry is a socket
# -p  Entry is a named pipe (a “ffo”)
# -b  Entry is a block-special fle (like a mountable disk)
# -c  Entry is a character-special fle (like an I/O device)
# -u  File or directory is setuid
# -g  File or directory is setgid
# -k  File or directory has the sticky bit set
# -t  The flehandle is a TTY (as reported by the isatty() system function; flenames can’t be tested by this test)
# -T  File looks like a “text” fle
# -B  File looks like a “binary” fle
# -M  Modifcation age (measured in days)
# -A  Access age (measured in days)
# -C  Inode-modifcation age (measured in days)
