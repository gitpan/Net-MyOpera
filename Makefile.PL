use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Net::MyOpera',
    AUTHOR              => q{Cosimo Streppone <cosimo@cpan.org>},
    VERSION_FROM        => 'lib/Net/MyOpera.pm',
    ABSTRACT_FROM       => 'lib/Net/MyOpera.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Net::OAuth' => '0.25',
        'URI' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Net-MyOpera-*' },
);
