use strict;
use warnings;

use Test::More 'tests' => 2;
use Test::NoWarnings;
use Toolforge::MixNMatch::Object::YearMonth;
use Toolforge::MixNMatch::Print::YearMonth;

# Test.
my $obj = Toolforge::MixNMatch::Object::YearMonth->new(
	'count' => 10,
	'month' => 11,
	'year' => '2020',
);
my $ret = Toolforge::MixNMatch::Print::YearMonth::print($obj);
is($ret, '2020/11: 10', 'Print year/month.');
