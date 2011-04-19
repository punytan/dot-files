use inc::Module::Install;
name '[% dist %]';
all_from 'lib/[% module_unix_path %].pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
