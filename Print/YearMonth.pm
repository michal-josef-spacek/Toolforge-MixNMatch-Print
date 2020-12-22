package Toolforge::MixNMatch::Print::YearMonth;

use strict;
use warnings;

use Error::Pure qw(err);

our $VERSION = 0.03;

sub print {
	my $obj = shift;

	if (! defined $obj) {
		err "Object doesn't exist.";
	}
	if (! $obj->isa('Toolforge::MixNMatch::Object::YearMonth')) {
		err "Object isn't 'Toolforge::MixNMatch::Object::YearMonth'.";
	}

	my $print = $obj->year.'/'.$obj->month.': '.$obj->count;

	return $print;
}

1;

__END__
