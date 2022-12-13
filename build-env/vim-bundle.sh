#!/usr/bin/env bash

if [ ! -d "$HOME/dot-files/vim/bundle" ]; then
    mkdir -p "$HOME/dot-files/vim/bundle";
fi

cd "$HOME/dot-files/vim/bundle";

case $1 in
    'install')
        # color scheme
        git clone https://github.com/thinca/vim-guicolorscheme.git;
        git clone https://github.com/altercation/vim-colors-solarized.git;
        # git stuff
        git clone https://github.com/tpope/vim-fugitive.git;
        git clone https://github.com/airblade/vim-gitgutter.git;
        # syntax highlight
        git clone https://github.com/hallison/vim-markdown.git;
        git clone https://github.com/jnwhiteh/vim-golang.git;
        git clone https://github.com/fatih/vim-go.git;
        git clone https://github.com/leafgarland/typescript-vim.git;
        git clone https://github.com/wting/rust.vim.git;
        # utility
        git clone https://github.com/Shougo/neocomplcache.git;
        git clone https://github.com/thinca/vim-quickrun.git;
        git clone https://github.com/Shougo/unite.vim.git;
        git clone https://github.com/thinca/vim-ref.git;
        git clone https://github.com/vim-scripts/sudo.vim.git;
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
