#use strict;
use inc::Module::Install;

name     'Lingua-JA-Halfwidth';
all_from 'lib/Lingua/JA/Halfwidth.pm';

auto_include_deps;
auto_install;
use_test_base;

test_requires 'Test::Perl::Critic';

WriteAll;
