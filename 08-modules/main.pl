
#!/usr/bin/env perl
# Some of the code may be taken from
# “Learning Perl, 8th edition, by Ran‐dal L. Schwartz,
# brian d foy, and Tom Phoenix (O’Reilly). Copyright 2021 Enhydra
# Services, LLC, 978-1-492-09495-1.

use v5.42;
use utf8;

# You can specify that functions from module you need
use File::Basename qw/ basename /;
my $name = "/usr/local/bin/perl";
my $basename = basename $name;  # gives 'perl'
# You can also use full function name if you loaded a module
my $dirname = File::Basename::dirname $name;  # dirname from the module


use File::Spec;
print "Please enter a filename: ";
chomp(my $old_name = <STDIN>);
$dirname  = File::Basename::dirname $old_name;
$basename = basename $old_name;

my $new_name = File::Spec->catfile($dirname, $basename);
rename($old_name, $new_name)
    or warn "Can't rename '$old_name' to '$new_name': $!";


use Path::Class;
my $dir     = dir( qw(Users fred lib) );
my $subdir  = $dir->subdir( 'perl5' );     # Users/fred/lib/perl5
my $parent  = $dir->parent;                # Users/fred
my $windir  = $dir->as_foreign( 'Win32' ); # Users\fred\lib


# DBI can be used with any database interface
# use DBI;
# $dbh = DBI->connect($data_source, $username, $password);
# my $data_source = "dbi:Pg:dbname=name_of_database";
# my $sth = $dbh->prepare("SELECT * FROM foo WHERE bla");
# $sth->execute();
# my @row_ary  = $sth->fetchrow_array;
# $sth->finish;
# $dbh->disconnect();


# use Time::Moment;
# my $dt1 = Time::Moment->new(
#   year       => 1987,
#   month      => 12,
#   day        => 18,
#   );
# my $dt2 = Time::Moment->now;
# my $years  = $dt1->delta_years( $dt2 );
# my $months = $dt1->delta_months( $dt2 ) % 12;
# printf "%d years and %d months\n", $years, $months;
