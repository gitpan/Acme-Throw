#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

use Test::More;

use_ok "Acme::Throw";

my $got_val = eval { die "your mom\n" };
my $got_err = $@;
my $exp_err = <<'END';
(╯°□°）╯︵ ┻━┻ WHY WON'T THIS CODE WORK??!?
your mom
END

is $got_val, undef, "die didn't break";
TODO: {
  local $TODO= "get this working without pulling in cpan deps like IO::String or something like that...";
  is $got_err, $exp_err, "NOW WITH 100% MORE RAGE";
};


done_testing;
