set exrc
set secure

" ---- "
" VUNDLE "
" -------- "

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

"set tags+=/home/legopelle/.vim/tags/python.ctags
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
"let g:ycm_collect_identifiers_from_tags_files = 1


"Plugin 'davidhalter/jedi-vim'
"let g:jedi#force_py_version = 3
"let g:jedi#use_tabs_not_buffers = 0

" Track the engine.
Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"
" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

Plugin 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_html_checkers = ["bootlint"]
let g:syntastic_javascript_checkers = ["eslint"]

Plugin 'jelera/vim-javascript-syntax'

Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-distinguished'

Plugin 'pangloss/vim-javascript'

Plugin 'nathanaelkane/vim-indent-guides'
let delimitMate_expand_cr = 1

Plugin 'marijnh/tern_for_vim'

Plugin 'vim-scripts/HTML-AutoCloseTag'

Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

Plugin 'bling/vim-airline'

Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

call vundle#end()            " required
filetype plugin indent on    " required

" -------- "
" VUNDLE "
" ---- "
"
syntax on
filetype indent on

set number

augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" ------- "
" VIM-LATEX "
" -----------"

set grepprg=grep\ -nH\ $*
let g:tex_flavor="latex"
let g:Tex_DefaultTargetFormat="pdf"

" -----------"
" VIM-LATEX "
" ------- "

let mapleader = ","

set t_Co=256
"colorscheme solarized
colorscheme distinguished
set background=dark

set laststatus=2
