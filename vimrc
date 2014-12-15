syntax on
set ai
set ruler 	" show the line number on the bar
set more	" use more prompt
set autoread	" watch for file changes
set number 	" line numbers
set hidden
set ts=4
set shiftwidth=4
set hlsearch
set showcmd
set noshowmatch
"set ignorecase
set smartcase
set history=200
set linebreak
set cmdheight=2
set undolevels=1000
"set complete=.,w,b,u,U,t,i,d
set noerrorbells
set shell=bash
set fileformats=unix
set ff=unix
set vb
"set bg=dark
"set tw=78 fo+=Mm

filetype on
filetype indent on
filetype plugin on
set incsearch
set tags=tags;/
if has("autocmd")
	filetype plugin indent on
endif

" for slimv setting 
"let g:slimv_swank=0
"let g:slimv_lisp='/Applications/AllegroCL/alisp'
"let g:slimv_lisp='/usr/local/bin/sbcl'
"let g:slimv_swank_clojure = '! xterm -e lein swank &' 
"let g:slimv_swank_clojure = '! xterm -hold -e  lein swank &' 
"let g:slimv_swank_clojure = '! Terminal -e lein swank &' 


"colorscheme desert
"colorscheme elflord
"colorscheme slate
inoremap kj <Esc>

"nnoremap <silent> <F8> :TlistToggle<CR>
set backupdir=~/.vim/backup,.
set directory=~/.vim/backup,.
"set guifont=kai:h11
"set guifont=Courier\ New:h11
set guifont=Monaco:h12

"time
map T  "=strftime("[ %m/%d/%y %H:%M ]")<CR>p 

" tab complete
function InsertTabWrapper()
    let oldisk = &isk
    "	set isk+=:,(,),,
    "	set isk+=),,
    let col = col('.') - 1
    if !col || getline('.')[col-1] !~ '\k'
        return "\<tab>"
    endif
    return "\<c-p>"
    set &isk = oldisk
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"set foldmethod=indent
set foldmethod=syntax

" fo robjc tlist
let tlist_objc_settings    = 'objc;i:interface;c:class;m:method;p:property'
" begin tlist
nnoremap  <F8> :TlistToggle<CR>

"vim find 
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
map <F5> :execute "vimgrep /" . expand("<cword>") . "/j ../**" <Bar> cw<CR>


"for csarp
autocmd FileType cs set omnifunc=syntaxcomplete#Complete 
au FileType cs set foldmethod=marker 
au FileType cs set foldmarker={,} 
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',) 
au FileType cs set foldlevelstart=3 

"for auto close tag
au FileType xhtml,xml,php so ~/.vim/ftplugin/html_autoclosetag.vim

set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8

vmap <silent> ;h :s?^\(\s*\)+ '\([^']\+\)',*\s*$?\1\2?g<CR> 
vmap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1 + '\2'?<CR> 


set showcmd

" learn from "http://beiyuu.com/git-vim-tutorial/"
"" set vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Bundle 'gmarik/vundle'
Bundle 'ctrlp.vim'
Bundle 'AutoClose'
Bundle 'Zencoding.vim'
Bundle 'matchit.zip'
Bundle 'EasyMotion'
Bundle 'FencView.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'UltiSnips'
Bundle 'Tabular'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'Emmet.vim'
Bundle 'VimOrganizer'
Bundle 'guns/vim-clojure-static'
call vundle#end()



