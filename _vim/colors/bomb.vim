" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Steven Vertigan <steven@vertigan.wattle.id.au>
" Last Change:	2006 Sep 23
" Revision #5: Switch main text from white to yellow for easier contrast,
" fixed some problems with terminal backgrounds.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "bomb"

hi Normal		guifg=white		ctermfg=white	guibg=black		ctermbg=black
hi NonText		ctermfg=darkgray
hi comment		ctermfg=blue
hi constant		ctermfg=darkred
hi identifier	ctermfg=darkmagenta
hi statement	ctermfg=darkyellow
"hi preproc		ctermfg=darkmagenta
hi type			ctermfg=darkgreen
"hi special		ctermfg=lightyellow
"hi Underlined	ctermfg=lightgreen			
"hi label		ctermfg=magenta
hi operator		ctermfg=yellow

