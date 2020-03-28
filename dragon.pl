#!/usr/bin/perl

use strict;

sub F {
    my ($direction) = @_;

    # 0 - turn left
    # 1 - turn right
    print $direction;
}

sub dragon {
    my ( $level, $direction ) = @_;
    return if $level < 1;
    return F($direction) if 1 == $level;
    $level--;
    dragon( $level, 1 );
    dragon( 1,      $direction );
    dragon( $level, 0 );
}
#######################################
#
# Let's rock!
#
my $n = 0 + $ARGV[0];
unless ($n) {
    print "usage:\n$0 level\n";
    exit 1;
}
dragon( $n, 1 );
print "\n";

