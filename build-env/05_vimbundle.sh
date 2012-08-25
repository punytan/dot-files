#!/usr/bin/env bash

if [ ! -d "$HOME/dot-files/vim/bundle" ]; then
    mkdir -p "$HOME/dot-files/vim/bundle";
fi

cd "$HOME/dot-files/vim/bundle";

case $1 in
    'install')
        git clone git://github.com/thinca/vim-guicolorscheme.git;
        git clone git://github.com/Shougo/neocomplcache.git;
        git clone git://github.com/thinca/vim-quickrun.git;
        git clone git://github.com/Shougo/unite.vim.git;
        git clone git://github.com/thinca/vim-ref.git;
        git clone git://github.com/kchmck/vim-coffee-script.git;
        git clone git://github.com/groenewege/vim-less.git;
        git clone git://github.com/altercation/vim-colors-solarized.git;
        git clone git://github.com/scrooloose/nerdtree.git;
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


