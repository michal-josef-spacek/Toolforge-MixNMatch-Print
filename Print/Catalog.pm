package Toolforge::MixNMatch::Print::Catalog;

use strict;
use warnings;

use Indent;
use Toolforge::MixNMatch::Print::User;
use Toolforge::MixNMatch::Print::YearMonth;

our $VERSION = 0.02;

sub print {
	my ($obj, $opts_hr) = @_;

	if (! defined $opts_hr) {
		$opts_hr = {
			'type' => 1,
			'count' => 1,
			'year_months' => 1,
			'users' => 1,
		};
	}

	my @print = (
		$opts_hr->{'type'} ? 'Type: '.$obj->type : (),
		$opts_hr->{'count'} ? 'Count: '.$obj->count : (),
	);

	my $i;

	if ($opts_hr->{'year_months'} && @{$obj->year_months}) {
		$i //= Indent->new;
		push @print, 'Year/months:';
		$i->add;
		foreach my $year_month (sort { $a->year <=> $b->year || $a->month <=> $b->month }
			@{$obj->year_months}) {

			push @print, $i->get.Toolforge::MixNMatch::Print::YearMonth::print($year_month);
		}
		$i->remove;
	}

	if ($opts_hr->{'users'} && @{$obj->users}) {
		$i //= Indent->new;
		push @print, 'Users:';
		$i->add;
		foreach my $user (reverse sort { $a->count <=> $b->count } @{$obj->users}) {
			push @print, $i->get.Toolforge::MixNMatch::Print::User::print($user);
		}
		$i->remove;
	}

	return wantarray ? @print : (join "\n", @print);
}

1;

__END__
