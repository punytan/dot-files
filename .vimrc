syntax on
filetype plugin indent on
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,ucs-2,cp932,sjis
set number
set incsearch
set ignorecase
set showmatch
set showmode
set title
set ruler
set laststatus=2
set hlsearch
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
colorscheme wombat 

augroup SkeltonAu
    autocmd!
    autocmd BufNewFile  *.html 0r $HOME/.vim/templates/skel.html
    autocmd BufNewFile  *.pl   0r $HOME/.vim/templates/skel.pl
    autocmd BufNewFile  *.css  0r $HOME/.vim/templates/skel.css
augroup END

augroup filetypedetect
au! BufRead,BufNewFile *.psgi setfiletype perl
augroup END

"############################################################################
"#    Vim config (Recommended) from Appendix C of "Perl Best Practices"     #
"#     Copyright (c) O'Reilly & Associates, 2005. All Rights Reserved.      #
"#  See: http://www.oreilly.com/pub/a/oreilly/ask_tim/2001/codepolicy.html  #
"############################################################################

set autoindent                    "Preserve current indent on new lines
"set textwidth=78                  "Wrap at this column
set backspace=indent,eol,start    "Make backspaces delete sensibly
 
set tabstop=4                     "Indentation levels every four columns
set expandtab                     "Convert all tabs typed to spaces
set shiftwidth=4                  "Indent/outdent by four columns
set shiftround                    "Indent/outdent to nearest tabstop
 
set matchpairs+=<:>               "Allow % to bounce between angles too
 
"Inserting these abbreviations inserts the corresponding Perl statement...
iab phbp #! /usr/bin/perl -w      
iab phbg use Data::Dumper 'Dumper'; ^Mwarn Dumper [];^[hi
iab pdmk use Benchmark qw( cmpthese );^Mcmpthese -10, {};^[O
iab pusc use Smart::Comments;^M^M###
iab putm use Test::More qw( no_plan );
 
iab papp ^[:r ~/.code_templates/perl_application.pl^M
iab pmod ^[:r ~/.code_templates/perl_module.pm^M

"Buffer Settings
nnoremap <silent><C-n> :bn<CR>
nnoremap <silent><C-p> :bp<CR>

"Tab Settings
nnoremap <silent><F2> :tabp<CR>
nnoremap <silent><F3> :tabn<CR>
nnoremap :te :tabedit
