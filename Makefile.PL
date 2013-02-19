use strict;

use ExtUtils::MakeMaker;


my %args = (
    NAME => 'Algorithm::Networksort::Chooser',
    VERSION_FROM => 'lib/Algorithm/Networksort/Chooser.pm',
    PREREQ_PM => {
      'common::sense' => 0,
    },
    LIBS              => [],
    DEFINE            => '',
    LICENSE => 'perl',
    dist => {
      PREOP => 'perldoc -uT bin/algorithm-networksort-chooser > README.pod; pod2text README.pod > $(DISTVNAME)/README',
    },
);


my $eummv = eval ($ExtUtils::MakeMaker::VERSION);
if ($eummv >= 6.45) {
    $args{META_MERGE} = {
        resources => {
            repository => 'git://github.com/hoytech/Algorithm-Networksort-Chooser.git',
            bugtracker => 'https://github.com/hoytech/Algorithm-Networksort-Chooser/issues',
        },
    };
}

WriteMakefile(%args);
