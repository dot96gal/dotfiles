" --- basic ---
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

" --- dein ---
set nocompatible

let s:dein_base = '~/.cache/dein'
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

execute 'set runtimepath+=' . s:dein_src

call dein#begin(s:dein_base)
call dein#add(s:dein_src)

" instal plugins
call dein#add('tanvirtin/monokai.nvim')

call dein#end()

if has('filetype')
  filetype indent plugin on
endif

if has('syntax')
  syntax on
endif

if dein#check_install()
 call dein#install()
endif

