#!/usr/bin/env bash

if [ ! -d "$HOME/dot-files/vim/bundle" ]; then
    mkdir -p "$HOME/dot-files/vim/bundle";
fi

cd "$HOME/dot-files/vim/bundle";

case $1 in
    'install')
        # color scheme
        git clone git://github.com/thinca/vim-guicolorscheme.git;
        git clone git://github.com/altercation/vim-colors-solarized.git;
        # git stuff
        git clone git://github.com/tpope/vim-fugitive.git;
        git clone git://github.com/airblade/vim-gitgutter.git;
        # syntax highlight
        git clone git://github.com/kchmck/vim-coffee-script.git;
        git clone git://github.com/groenewege/vim-less.git;
        git clone git://github.com/hallison/vim-markdown.git;
        git clone git://github.com/digitaltoad/vim-jade.git;
        git clone git://github.com/jnwhiteh/vim-golang.git;
        git clone git://github.com/wting/rust.vim.git;
        git clone git@github.com:derekwyatt/vim-scala.git;
        # utility
        git clone git://github.com/Shougo/neocomplcache.git;
        git clone git://github.com/thinca/vim-quickrun.git;
        git clone git://github.com/Shougo/unite.vim.git;
        git clone git://github.com/thinca/vim-ref.git;
        git clone git://github.com/vim-scripts/sudo.vim.git;
        ;;

    'upgrade')
        dirlista=`find . -maxdepth 1 -type d -print`;
        for d in $dirlista; do
            if [ "$d" != "." ]; then
                cd "$d";
                echo $d;
                git pull;
                cd '..';
            fi
        done;
        ;;
    *)
        cat << EOM
Usage:
    $0 install

    $0 upgrade

EOM
        ;;
esac


