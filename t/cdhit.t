#!/usr/bin/env perl6

use Test;
use lib "{$*PROGRAM.dirname}/../lib";
use CDHit::Cluster;

ok CDHit::Cluster.parse(">foo\nbar baz\n"), "Parsed OK";

nok CDHit::Cluster.parse("YYZ"), "Failed when it should";

done-testing;
