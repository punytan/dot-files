" Original author is :
" Maintainer:	Lars H. Nielsen (dengmao@gmail.com)
" Last Change:	January 22 2007
"
" This file is modified by punytan (punytan@gmail.com)
"

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "wombat"


" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine   guibg=#2d2d2d
  hi CursorColumn guibg=#ffffff
  hi MatchParen   guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu 		  guifg=#f6f3e8 guibg=#444444
  hi PmenuSel 	  guifg=#000000 guibg=#cae682
endif

hi Search ctermbg=74
hi Pmenu ctermbg=234
" General colors
hi Cursor 		guifg=NONE    guibg=#656565 gui=NONE
hi Normal 		guifg=#ffffff guibg=NONE    gui=NONE
hi NonText 		guifg=#808080 guibg=NONE    gui=NONE
hi LineNr 		guifg=#cccc33 guibg=NONE    gui=NONE
hi StatusLine 	guifg=#ffffff guibg=NONE    gui=italic
hi StatusLineNC guifg=#444444 guibg=#AAAAAA gui=NONE
hi VertSplit 	guifg=#444444 guibg=#444444 gui=NONE
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=NONE
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual		guifg=#ffffff guibg=#444444 gui=NONE
hi SpecialKey	guifg=#808080 guibg=#343434 gui=NONE

" Syntax highlighting
hi Comment 		guifg=#000000 guibg=#c0c0c0 gui=italic
hi Todo 		guifg=#8f8f8f gui=italic
hi Constant 	guifg=#e5786d gui=NONE
hi String 		guifg=#000000 guibg=#ffffff gui=italic
hi Identifier 	guifg=#cae682 gui=NONE
hi Function 	guifg=#cae682 gui=NONE
hi Type 		guifg=#cae682 gui=NONE
hi Statement 	guifg=#8ac6f2 gui=NONE
hi Keyword		guifg=#8ac6f2 gui=NONE
hi PreProc 		guifg=#e5786d gui=NONE
hi Number		guifg=#e5786d gui=NONE
hi Special		guifg=#e7f6da gui=NONE


