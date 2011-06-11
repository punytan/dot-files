#!/usr/bin/env perl

use strict;
use warnings;
use File::Path;

my %file = (
    '.bashrc'       => 'bash/rc',
    '.bash_logout'  => 'bash/logout',
    '.gitconfig'    => 'gitconfig',
    '.my.cnf'       => 'my.cnf',
    '.screenrc'     => 'screenrc',
    #'.ssh/config'   => 'ssh/config',
    '.vimrc'        => 'vim/vimrc',
    '.module-setup' => 'module-setup',
);

for my $dot (keys %file) {
    my $path = "$ENV{HOME}/$dot";
    unlink $path if (-e $path);
    symlink "$ENV{HOME}/dot-files/$file{$dot}", $path;
}

rmtree  "$ENV{HOME}/.vim" if -e "$ENV{HOME}/.vim";
symlink "$ENV{HOME}/dot-files/vim", "$ENV{HOME}/.vim";
mkdir   "$ENV{HOME}/.screen" unless -e "$ENV{HOME}/.screen";

__END__
