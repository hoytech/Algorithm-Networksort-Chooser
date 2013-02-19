package Algorithm::Networksort::Chooser;

our $VERSION = '0.100';

use common::sense;




sub silence_carps {
  local *Algorithm::Networksort::carp = sub {};

  shift->();
}


sub build_selection_network {
  my ($network, $selection) = @_;

  my $pinned = {};
  $pinned->{$_} = 1 foreach (@$selection);

  my @reversed_network = reverse @$network;
  my @reversed_output;

  foreach my $comparator (@reversed_network) {
    if ($pinned->{$comparator->[0]} || $pinned->{$comparator->[1]}) {
      $pinned->{$comparator->[0]} = $pinned->{$comparator->[1]} = 1;

      push @reversed_output, $comparator;
    }
  }

  return [ reverse @reversed_output ];
}



1;




=encoding utf-8

=head1 NAME

Algorithm::Networksort::Chooser - Helper utility for Algorithm::Networksort

=head1 DESCRIPTION

This module contains library routines used by the L<algorithm-networksort-chooser> command-line script.

=head1 SEE ALSO

L<Algorithm-Networksort-Chooser github repo|https://github.com/hoytech/Algorithm-Networksort-Chooser>

=head1 AUTHOR

Doug Hoyte, C<< <doug@hcsw.org> >>

=head1 COPYRIGHT & LICENSE

Copyright 2013 Doug Hoyte.

This module is licensed under the same terms as perl itself.
