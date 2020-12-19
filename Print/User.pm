package Toolforge::MixNMatch::Print::User;

use strict;
use warnings;

our $VERSION = 0.01;

sub print {
	my $obj = shift;

	my $print = $obj->username.' ('.$obj->uid.'): '.$obj->count;

	return $print;
}

1;

__END__
