" =======================================================================
" =                                                                     =
" =                                                                     =
" =                                VIMRC                                =
" =                                                                     =
" =                                                                     =
" =======================================================================
" -----------------------------------------------------------------------
" - AUTOR: Chauã Queirolo                                               -
" -----------------------------------------------------------------------

" =======================================================================
" =                                                                     =
" =                            ABBREVIATION                             =
" =                                                                     =
" =======================================================================

cab W  w
cab Wq wq
cab wQ wq
cab WQ wq
cab Q  q

" =======================================================================
" =                                                                     =
" =                              COMMANDS                               =
" =                                                                     =
" =======================================================================

" Retira espaços em branco do final de todas as linhas do arquivo
map ;l :%s/\s*$//g<cr>:nohlsearch <cr>

" Desabilita o highlight da busca
map <C-L> :nohlsearch<cr>

" Faz os resultados da busca aparecerem no meio da tela
nmap n nzz
nmap # #zz
nmap * *zz

" Copia ate o final da linha
map Y y$

" Compilar os programas
imap <F5> <ESC>:mak<CR>i
map  <F5> <ESC>:mak<CR>

" Centraliza um texto
map <C-c>  <ESC>:ce 74<CR>

"" Alinha o texto com a margem da tela
map  <C-g>  <ESC>gwap
imap <C-g>  <ESC>gwap<i>

" Desabilita a funcao ZZ
map ZZ <esc>:wq

" =======================================================================
" =                                                                     =
" =                               CONFIG                                =
" =                                                                     =
" =======================================================================

" Habilita sintaxe e identacao
syntax on
filetype indent on

" Ordem de precedencia para procurar arquivos
set suffixes=.bak,~,.pdf,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Arquivos para serem ignorados pelo editor
set wildignore=*.o,*.obj,*.bak,*.exe,*.class,*.aux,*.log,*.blg,*.toc,*.lot,*.lof,*.idx,*.ilg,*.ind,*.bbl,*.out,*.nav,*.snm

" Muda entre os modos -- INSERT -- e -- INSERT (paste) --
set pastetoggle=<F12>

" Outras opcoes
setlocal nocompatible                   " Usar o VIM padrao
setlocal showmode                       " Exibe o modo de operacoes
setlocal ruler                          " Exibe a posicao do cursor
setlocal backspace=eol,start,indent     " Usa o backspace para deletar linhas
setlocal wrap                           " Liga a quebra de linhas
setlocal notitle                        " Nao altera o titulo do terminal
setlocal autowrite                      " Salva o arquivo automaticamente
setlocal tabstop=4                      " Numero de espacos do tab
setlocal expandtab                      " Nao transforma TAB's em Espacos
setlocal shiftwidth=4                   " Identacao corresponde a um tab 

" -----------------------------------------------------------------------
" -                             HISTORICO                               -
" -----------------------------------------------------------------------

" Tamanho do arquivo de historico
setlocal hi=250

" Guarda a posicao do cursor e historico da linha de comando
setlocal viminfo='100,\"500,:40,%,n~/.viminfo

" Abre o arquivo na ultima posicao visitada
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif


" -----------------------------------------------------------------------
" -                          BARRA DE STATUS                            -
" -----------------------------------------------------------------------

" Exibe uma linha de status
setlocal laststatus=1

" Cor da barra de Status
highlight StatusLine gui=bold ctermfg=Blue ctermbg=White

" -----------------------------------------------------------------------
" -                               BUSCA                                 -
" -----------------------------------------------------------------------

" Opcoes de busca com / e ?
setlocal hlsearch                        " Mostra cores para busca
setlocal incsearch                        " busca incremental

" Cores para a busca com / e ?
hi Search    ctermbg=yellow  ctermfg=black
hi IncSearch ctermbg=green   ctermfg=cyan

" -----------------------------------------------------------------------
" -                        CORRETOR ORTOGRAFICO                         -
" -----------------------------------------------------------------------

" Define a linguagem
set spelllang=pt

" Desabilita inicialmente o corretor
set nospell

" -----------------------------------------------------------------------
" -                           ESQUEMA DE COR                            -
" -----------------------------------------------------------------------
"colorscheme bomb
set background=light

" -----------------------------------------------------------------------
" -                             CHANGE LOG                              -
" -----------------------------------------------------------------------

"  Salva a data de alteracao de um arquivo preexistente
fun! LastChange()
    mark z
    if getline(12) =~ ".*Modified:"  ||
                \ getline(13) =~ ".*Modified:"  ||
                \ getline(14) =~ ".*Modified:"  ||
                \ getline(15) =~ ".*Modified:"
        exec "10,15s/Modified: [0-9].*[0-9]/Modified: " . strftime("%d@%b@%Y") . "/"
        10,15s/@/\//g
    endif
    exec "'z"
endfun

au BufWritePre * call LastChange()


" =======================================================================
" =                                                                     =
" =                              PLUGINS                                =
" =                                                                     =
" =======================================================================

" Habilita os arquivos de plugin
"filetype plugin on

" =======================================================================
" =                                                                     =
" =                            SINTAX FILES                             =
" =                                                                     =
" =======================================================================

" C, C++, Java
au BufNewFile,BufRead *.c,*.cpp,*.java,*.h,*.js map  <F4>  <ESC>:so ~/.vim/header/header1.vim<CR>
au BufNewFile,BufRead *.c,*.cpp,*.java,*.h,*.js map  <C-h> <ESC>:so ~/.vim/header/header3.vim<CR>
au BufNewFile,BufRead *.c,*.cpp,*.java,*.h,*.js imap <C-h> <ESC>:so ~/.vim/header/header3.vim<CR>
au BufNewFile,BufRead *.c,*.cpp,*.java,*.h,*.js map  <C-j> <ESC>:so ~/.vim/header/header7.vim<CR>
au BufNewFile,BufRead *.c,*.cpp,*.java,*.h,*.js imap <C-j> <ESC>:so ~/.vim/header/header7.vim<CR>

" txt, README
au BufNewFile,BufRead *.txt,README source ~/.vim/syntax/txt.vim
au BufNewFile,BufRead *.txt,README map   <F4>         <ESC>:so ~/.vim/header/header2.vim<CR><ESC>1ggdd12G<ESC>
au BufNewFile,BufRead *.txt,README map   <C-h>        <ESC>:so ~/.vim/header/header6.vim<CR>
au BufNewFile,BufRead *.txt,README imap  <C-h>        <ESC>:so ~/.vim/header/header6.vim<CR>i
au BufNewFile,BufRead *.txt,README set   wrap tw=80

" Python
au BufNewFile,BufRead *.py map   <F4>  <ESC>i#!/usr/bin/python<CR><ESC>:so ~/.vim/header/header2.vim<CR>
au BufNewFile,BufRead *.py map   <C-j> <ESC>i#!/usr/bin/python<CR><CR>
au BufNewFile,BufRead *.py map   <C-h> <ESC>:so ~/.vim/header/header6.vim<CR>
au BufNewFile,BufRead *.py imap  <C-h> <ESC>:so ~/.vim/header/header6.vim<CR>i

" Bash
au BufNewFile,BufRead *.sh map   <F4>  <ESC>i#!/bin/bash<CR><ESC>:so ~/.vim/header/header2.vim<CR>
au BufNewFile,BufRead *.sh map   <C-j> <ESC>i#!/bin/bash<CR><CR>
au BufNewFile,BufRead *.sh map   <C-h> <ESC>:so ~/.vim/header/header6.vim<CR>
au BufNewFile,BufRead *.sh imap  <C-h> <ESC>:so ~/.vim/header/header6.vim<CR>i

" LaTeX
au BufNewFile,BufRead *.tex map   <F4>  <ESC>:so ~/.vim/header/header4.vim<CR>
au BufNewFile,BufRead *.tex map   <C-h> <ESC>:so ~/.vim/header/header5.vim<CR>
au BufNewFile,BufRead *.tex imap  <C-h> <ESC>:so ~/.vim/header/header5.vim<CR>i
au BufNewFile,BufRead *.tex set   wrap  tw=80

" GNUPLOT
au BufNewFile,BufRead *.gnu map   <F5> <ESC>:w <CR>:!gnuplot $(ls -t \| head -1)<CR>
au BufNewFile,BufRead *.gnu imap  <F5> <ESC>:w <CR>:!gnuplot $(ls -t \| head -1)<CR>i

" HTML
au BufNewFile,BufRead *.xml,*.html,*.htm,*.xhtml set softtabstop=4
au BufNewFile,BufRead *.xml,*.html,*.htm,*.xhtml set shiftwidth=4

