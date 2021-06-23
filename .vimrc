"map <f7> :w<Enter>:!perl % <CR>
"theme
colorscheme CodeSchool3 
set termguicolors

"for yaml editing
set expandtab autoindent


"system clipboard 기본설정
set clipboard=unnamedplus

syntax on
filetype indent plugin on
let python_highlight_all=1
set number
set ignorecase
set noswapfile
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set cindent
set expandtab
set showmatch
set hlsearch
autocmd FileType make setlocal noexpandtab

" Vundle
set nocompatible    " be iMproved, required
filetype off	    " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'The-NERD-Tree'
Plugin 'Raimondi/delimitMate'
"Plugin 'Syntastic'
Plugin 'SirVer/ultisnips'
"Plugin 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plugin 'tpope/vim-fugitive'
"Plugin 'scrooloose/syntastic'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ultisnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']
let g:UltiSnipsSnippetDirectories = ['UltiSnips']


" delimitMate
let delimitMate_expand_cr=1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo at http://vim-scripts.org/vim/scripts.html; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
let g:airline_powerline_fonts = 1

set laststatus=2 " turn on bottom bar

call plug#begin()

" vim markdown preview
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" vim indent guide
Plug 'tpope/vim-sensible'
Plug 'thaerkh/vim-indentguides'


call plug#end()

" wakatime plugin
Plugin 'wakatime/vim-wakatime'


" for vim-indent guide
let g:indentguides_ignorelist = [] " IndentGuide를 원치 않는 파일이 있으면 []안에 파일경로 입력.
let g:indentguides_spacechar = '┆'  "space를 표시하는 문자를 다르게 지정 해줄 수 있습니다. 
let g:indentguides_tabchar = '|' "tab을 표시하는 문자를 다르게 지정 해줄 수 있습니다.

