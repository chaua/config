" Vim syntax file
" Filename: key.vim
" Language: configuration file
" Maintainer: Chauã Queirolo
" Instalacao: Colocar no final do seu ~/.vimrc:
"   au BufNewFile,BufRead *.txt source ~/rota/para/txt.vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syn clear
syn case ignore
set autoindent

" ---------------------------------------------------------------
" MISC:
" ---------------------------------------------------------------

syn keyword keyTodo    TODO FIXME XXX contained
syn match   keyComment '^[ \t]*#.*$' contains=txtTodo
syn match   keyNumber  '\<\d\+\([,.]\d\+\)\{,1}\>'
syn match   keyToken   '^[ \t]*[a-zA-Z0-9]\+[ \t]\+' contains=txtTodo

" ---------------------------------------------------------------
" color definitions (using Vim defaults)
" ---------------------------------------------------------------

hi link keyTodo         Todo
hi link keyComment      Comment
hi link keyNumber       Number
hi link keyToken        Type

"
let b:current_syntax = 'key'
" vim:tw=0:et
