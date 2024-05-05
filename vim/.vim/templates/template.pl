#!/usr/bin/perl
use warnings;
use strict;

# TODO: Fix a general appconfig::opn subclass
use AppConfig;
use Getopt::Long;
use Pod::Usage;

my $config = AppConfig->new();

$config->file($cf);
$config->getopt(\@ARGV);

pod2usage(0) if $config->get('help');

my $missing;
foreach (qw()) {
    if (!defined $config->$_) {
        warn "$_ is not defined";
        $missing++;
    }
}
pod2usage(1) if $missing;

__END__

=head1 NAME

x.pl - Boilerplate

=head1 SYNOPSIS

x.pl --help [ OPTIONS ]

=head1 OPTIONS

=over

=item * --help (this help)

=back

=head1 AUTHOR

__NAME__

=head1 LICENSE and COPYRIGHT

Wesley Schwengle, 2017
