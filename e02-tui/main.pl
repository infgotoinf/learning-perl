#!/usr/bin/env perl

# use v5.42;
use utf8;

use Term::Animation;
use Curses;
$anim = Term::Animation->new();
# set the delay for getch
halfdelay( 2 );
# create a simple shape we can move around
$shape = "<=O=>";
# turn our shape into an animation object
$anim->new_entity(
             shape         => $shape,        # object shape
             position      => [3, 7, 10],    # row / column / depth
             callback_args => [1, 0, 0, 0],  # the default callback
                                             #  routine takes a list
                                             #  of x,y,z,frame deltas
             wrap          => 1              # turn screen wrap on
);
# animation loop
while(1) {
  # run and display a single animation frame
  $anim->animate();
  # use getch to control the frame rate, and get input at the
  # same time. (not a good idea if you are expecting much input)
  my $input = getch();
  if($input eq 'q') { last; }
}
# cleanly end the animation, to avoid hosing up the user's terminal
$anim->end();
