package Algorithm::Networksort::Chooser;

our $VERSION = '0.100';

use common::sense;


1;




=encoding utf-8

=head1 NAME

Algorithm::Networksort::Chooser - Helper utility for Algorithm::Networksort

=head1 DESCRIPTION

The C<algorithm-networksort-chooser> script helps you find the best sorting network for your particular use-case.

    $ algorithm-networksort-chooser 9  ## input array size 9
    $ algorithm-networksort-chooser --range=4-10  ## find best networks for sizes 4-10

    $ algorithm-networksort-chooser 9 --opt=comparators  ## optimise for comparators (default)
    $ algorithm-networksort-chooser 9 --opt=stages  ## optimise for stages

    $ algorithm-networksort-chooser 9 --median  ## best median network
    $ algorithm-networksort-chooser 9 --selection=4  ## best median network
    $ algorithm-networksort-chooser 9 --selection=0,1,2  ## top-3 elements selection net

    $ algorithm-networksort-chooser 9 --validate  ## run 0-1 validation test
    $ algorithm-networksort-chooser 9 --ascii  ## show network as ASCII diagram



=head1 FUTURE IDEAS

Optimise by average-swaps using combinatoric analysis

Algorithm::Networksort::Validate::XS



=head1 SEE ALSO

L<Algorithm-Networksort-Chooser github repo|https://github.com/hoytech/Algorithm-Networksort-Chooser>

=head1 AUTHOR

Doug Hoyte, C<< <doug@hcsw.org> >>

=head1 COPYRIGHT & LICENSE

Copyright 2013 Doug Hoyte.

This module is licensed under the same terms as perl itself.
