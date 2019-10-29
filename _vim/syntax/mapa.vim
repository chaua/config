" Vim syntax file
" Filename: mapa.vim
" Language: mapa
" Maintainer: Chauã Coluene Queirolo
" URL: http://
" Instalacao: Colocar no final do seu ~/.vimrc:
"   au BufNewFile,BufRead *.mapa source ~/rota/para/mapa.vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syn clear
syn case ignore
set autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MISC:

syn match   mapaParede    '\#'
syn match   mapaMoeda     '\$'
syn match   mapaArmadilha 'x'
syn match   mapaPorta     'p'
syn match   mapaChave     'c'
syn match   mapaEstrada   '\.'
syn match   mapaVariaveis   '^\(POS_X\|POS_Y\|BLOCO_X\|BLOCO_Y\|LINHAS\|COLUNAS\|FASE\)'

syn keyword mapaTodo    TODO FIXME XXX contained
syn match   mapaComment '^`.*$' contains=mapaTodo
syn match   mapaNumber  '\<\d\+\([,.]\d\+\)\{,1}\>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color definitions (using Vim defaults)

hi link mapaParede      Comment
hi link mapaArmadilha   Number
hi link mapaMoeda       Type
hi link mapaChave       Todo
hi link mapaPorta       Error
"hi link mapaEstrada     Comment

hi link mapaVariaveis   Type
hi link mapaComment     Comment
hi link mapaTodo        Todo
hi link mapaNumber      Number

"
let b:current_syntax = 'mapa'
" vim:tw=0:et
