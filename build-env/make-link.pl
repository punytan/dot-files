#!/usr/bin/env perl

use strict;
use warnings;
use File::Path;

my %file = (
    '.bashrc'       => 'bash/rc',
    '.bash_logout'  => 'bash/logout',
    '.inputrc'      => 'inputrc',
    '.gitconfig'    => 'gitconfig',
    '.gitignore'    => 'gitignore',
    '.my.cnf'       => 'my.cnf',
    #'.ssh/config'   => 'ssh/config',
    '.vimrc'        => 'vim/vimrc',
    '.tmux.conf'    => 'tmux.conf',
);

for my $dot (keys %file) {
    my $path = "$ENV{HOME}/$dot";
    unlink $path if (-e $path);
    symlink "$ENV{HOME}/dot-files/$file{$dot}", $path;
}

rmtree  "$ENV{HOME}/.vim" if -e "$ENV{HOME}/.vim";
symlink "$ENV{HOME}/dot-files/vim", "$ENV{HOME}/.vim";

__END__
