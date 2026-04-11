#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;

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

# You can stack file tests operators
my $filename = $ARGV[0];
if (-w -r $filename) {
  print "The file is both readable and writable!\n";
}

# stat() gives detailed info about file
say stat $filename;
my($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
  $size, $atime, $mtime, $ctime, $blksize, $blocks)
    = stat($filename);
# You can use File::stat cause it's easier to use

# localtime() let's you represent localtime timestamp as a more readable thing
my $timestamp = 1454133253;
say localtime $timestamp;

my($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst)
  = localtime $timestamp;

# gmtime gives you current timestamp
my $now = gmtime;


# 10 & 12  Bitwise-and—which bits are true in both operands
# (this gives 8)
# 10 | 12  Bitwise-or—which bits are true in one operand or the other
# (this gives 14)
# 10 ^ 12  Bitwise-xor—which bits are true in one operand or the other but not both
# (this gives 6)
# 6 << 2   Bitwise shift left—shift the left operand the number of bits shown by the right operand, adding zero-bits at the least-signifcant places
# (this gives 24)
# 25 >> 2  Bitwise shift right—shift the left operand the number of bits shown by the right operand, discarding the least-signifcant bits
# (this gives 6)
# ~ 10     Bitwise negation, also called unary bit complement, returns the number with the opposite bit for each bit in the operand
# (this gives 0xFFFFFFF5, but see the text)


# $mode is the mode value returned from a stat of CONFIG
warn "Hey, the configuration file is world-writable!\n"
  if $mode & 0002;                             # configuration security problem
my $classical_mode = 0777 & $mode;             # mask off extra high-bits
my $u_plus_x = $classical_mode | 0100;         # turn one bit on
my $go_minus_r = $classical_mode & (~ 0044);   # turn two bits off


my $number     = 137;
my $number_str = '137';
my $string     = 'Amelia';

# & converts all operands to ints then does that it does
say "number_str & string:  ", $number_str & $string; # 0
say "number & string:      ", $number & $string;     # 0
say "number & number_str:  ", $number & $number_str; # 137
say "number_str & string:  ", $number_str & $string; # 0
print "\n";

# &. is like the reqular & operator, but it converts all operands to strings
say "number_str & string:  ", $number_str &. $string; # !%
say "number & string:      ", $number &. $string;     # !%
say "number & number_str:  ", $number &. $number_str; # 137
say "number_str & string:  ", $number_str &. $string; # !%
