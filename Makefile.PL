use strict;
use warnings;
use inc::Module::Install;

name     'Lingua-JA-Halfwidth';
all_from 'lib/Lingua/JA/Halfwidth.pm';

test_requires 'Test::Perl::Critic';
test_requires 'Test::Base';

WriteAll;
