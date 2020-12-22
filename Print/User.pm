package Toolforge::MixNMatch::Print::User;

use strict;
use warnings;

use Error::Pure qw(err);

our $VERSION = 0.03;

sub print {
	my $obj = shift;

	if (! defined $obj) {
		err "Object doesn't exist.";
	}
	if (! $obj->isa('Toolforge::MixNMatch::Object::User')) {
		err "Object isn't 'Toolforge::MixNMatch::Object::User'.";
	}

	my $print = $obj->username.' ('.$obj->uid.'): '.$obj->count;

	return $print;
}

1;

__END__
