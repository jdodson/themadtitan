#
# the_mad_titan.pl by Jon Dodson (http://jdodson.org)
#
# Written in PERL because all crazy shit should be.  Also, not a Perl expert so,
# you know... chill.
#
# MIT License
#
# 4/24/2019
#
use strict;
use List::Util qw(shuffle);
use POSIX;

sub print_people_formatted {
   my (@people) = @_;

   print "[ ";

   foreach (@people) {
     print "\"$_\" ";
   }
   print " ]\n";
}

my @people = ("Scarlet Witch", "Black Panther", "Vision", "Captain America", "Black Widow", "Bruce Banner", "Iron Man", "Doctor Strange", "Starlord", "Mantis", "Drax", "Rocket Racoon", "Groot", "Gamora", "Thor", "Spider-Man", "War Machine", "The Winter Soldier");

my @random = shuffle(@people);

my $half = @random.length;

# Thanos rounds up... YOU BASTARD!
$half = ceil($half / 2);

my @dusted = ();
my @avengers = ();

for (my $i=0; $i <= @random.length; $i++) {
   if($i < $half) {
     push(@dusted, @random[$i]);
   } else {
     push(@avengers, @random[$i]);
   }
}

# strip whitespace elements https://www.perlmonks.org/?node_id=124970
@avengers = grep /\S/, @avengers;

print "\n";
print "Thanos: \"It was. And it was beautiful. Titan was like most planets. Too many mouths, not enough to go around. And when we faced extinction, I offered a solution.  At random. Dispassionate, fair. The rich and poor alike. And they called me a madman. And what I predicted, came to pass.\"\n\n";
print "THE MAD TITAN SNAPS HIS FINGERS!\n";
print "\n";

print "The people who become dust: ";
print_people_formatted(@dusted);

print "\n";

print "Avengers Assemble! ";
print_people_formatted(@avengers);
