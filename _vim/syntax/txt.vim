" Vim syntax file
" Filename: txt.vim
" Language: plain text :)
" Maintainer: Aurelio Marinho Jargas
" URL: http://aurelio.net/doc/vim/txt.vim
" Instalacao: Colocar no final do seu ~/.vimrc:
"   au BufNewFile,BufRead *.txt source ~/rota/para/txt.vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syn clear
syn case ignore
set autoindent

" ---------------------------------------------------------------
" LIST:
" ---------------------------------------------------------------

syn match txtList    '^[ \t]*[-+*.][ \t]\+'
syn match txtList    '^[ \t]*[a-zA-Z]\{1,3\})[ \t]\+'
syn match txtDefList ':'


" ---------------------------------------------------------------
" MISC:
" ---------------------------------------------------------------

syn keyword txtTodo    TODO FIXME XXX contained
syn match   txtComment  '^#.*$' contains=txtTodo
syn match   txtComment2 '^+.*$' contains=txtTodo
syn match   txtNumber  '\<\d\+\([,.]\d\+\)\{,1}\>'
syn match   txtPercent '\<\d\+\([,.]\d\+\)\{,1}%'

syn match   txtSpecial '[][(){}]'
syn match   txtSpecial '\<\(US\|R\)\$'

syn match   txtSection       '^[ \t]*\d\+).*$' contains=txtTodo
syn match   txtSubSection    '^[ \t]*\d\+\([.]\d\+\)).*$' contains=txtTodo
syn match   txtSubSubSection '^[ \t]*\d\+\([.]\d\+\)\{2,\}).*$' contains=txtTodo
syn region  txtWarn          start="\*\*\*" end="\*\*\*"
syn match   txtNotes         '[-=_]\{3,}.*[-=_]\{3,}' contains=txtTodo
syn region  txtCode          start="///" end="///" 



" ---------------------------------------------------------------
" URL EMAIL:
" ---------------------------------------------------------------

syn match txtEmail '\<[A-Za-z0-9_.-]\+@\([A-Za-z0-9_-]\+\.\)\+[A-Za-z]\{2,4}\>\(?[A-Za-z0-9%&=+.,@*_-]\+\)\='
syn match txtUrl   '\<\(\(https\=\|ftp\|news\|telnet\|gopher\|wais\)://\([A-Za-z0-9._-]\+\(:[^ @]*\)\=@\)\=\|\(www[23]\=\.\|ftp\.\)\)[A-Za-z0-9%._/~:,=$@-]\+\>/*\(?[A-Za-z0-9/%&=+.,@*_-]\+\)\=\(#[A-Za-z0-9%._-]\+\)\='

" ---------------------------------------------------------------
" FONT BEAUTIFIERS:
" ---------------------------------------------------------------

syn region   txtParentesis start="(" end=")" 
syn region   txtQuotes     start="["]" end="["]"
syn match    txtQuotes     '[']'


" ---------------------------------------------------------------
" color definitions (specific)
" ---------------------------------------------------------------
hi txtBold        term=bold        cterm=bold        gui=bold
hi txtItalic      term=italic      cterm=italic      gui=italic
hi txtUnderline   term=underline   cterm=underline   gui=underline

" ---------------------------------------------------------------
" color definitions (using Vim defaults)
" ---------------------------------------------------------------
hi link txtList                 Statement
hi link txtDefList              Statement

hi link txtTodo                 Todo
hi link txtComment              Comment
hi link txtComment2             Type
hi link txtNumber               Number
hi link txtPercent              Number 

hi link txtSpecial              Statement
hi link txtCode                 Preproc

hi link txtSection              Function
hi link txtSubSection           Type
hi link txtSubSubSection        Special
hi link txtNotes                Function
hi link txtWarn                 Error

hi link txtEmail                PreProc
hi link txtUrl                  PreProc

hi link txtParentesis           Comment
hi link txtQuotes               String

"
let b:current_syntax = 'txt'
" vim:tw=0:et
