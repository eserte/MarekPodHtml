# -*- perl -*-
# Testing of Pod::HTML
# Author: Marek Rouchal <marek@saftsack.fs.uni-bayreuth.de>

$| = 1;

use Test;
use vars qw($TEST_MODE);

BEGIN { plan tests => 1 }

require Cwd;
my $THISDIR = Cwd::cwd();

my $htmldir = "$THISDIR/html";

#@ARGV = ('-dir', $htmldir, qw(-inc -script -libpods perlfunc,perlvar,perlrun));
@ARGV = ('-dir', $htmldir, qw(-script));
$TEST_MODE = 1; # do not exit
eval "require 'blib/script/mpod2html';";
if($@) {
  ok(0);
  print "$@\n";
} else {
  ok(1);
}

