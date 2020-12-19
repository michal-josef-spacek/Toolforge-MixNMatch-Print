package Toolforge::MixNMatch::Print::YearMonth;

use strict;
use warnings;

our $VERSION = 0.01;

sub print {
	my $obj = shift;

	my $print = $obj->year.'/'.$obj->month.': '.$obj->count;

	return $print;
}

1;

__END__
