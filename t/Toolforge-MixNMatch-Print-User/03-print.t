use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Toolforge::MixNMatch::Object::User;
use Toolforge::MixNMatch::Print::User;

# Test.
my $obj = Toolforge::MixNMatch::Object::User->new(
	'count' => 10,
	'uid' => 1,
	'username' => 'skim',
);
my $ret = Toolforge::MixNMatch::Print::User::print($obj);
is($ret, 'skim (1): 10', 'Print user.');
