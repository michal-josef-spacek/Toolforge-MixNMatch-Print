use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Toolforge::MixNMatch::Object::Catalog;
use Toolforge::MixNMatch::Print::Catalog;

# Test.
my $obj = Toolforge::MixNMatch::Object::Catalog->new(
	'count' => 1,
	'type' => 'Q5',
);
my $ret = Toolforge::MixNMatch::Print::Catalog::print($obj);
my $right_ret = <<'END';
Type: Q5
Count: 1
END
chomp $right_ret;
is($ret, $right_ret, 'Print catalog.');
