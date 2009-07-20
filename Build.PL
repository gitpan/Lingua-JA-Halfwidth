use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Lingua::JA::Halfwidth',
    license             => 'perl',
    dist_author         => 'sasata299 <sasata299@livedoor.com>',
    dist_version_from   => 'lib/Lingua/JA/Halfwidth.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Lingua-JA-Halfwidth-*' ],
);

$builder->create_build_script();
