set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tomasr/molokai'
Plugin 'tomtom/tcomment_vim'
Plugin 'mattn/emmet-vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/html5.vim'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'w0rp/ale'
" Plugin 'vim-erlang/vim-erlang-omnicomplete'
" Plugin 'vim-erlang/vim-erlang-skeletons'
" Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'tpope/vim-surround'
" Plugin 'pangloss/vim-javascript'
" Plugin 'mxw/vim-jsx'
" Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 't0il3ts0ap/iterm-start'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'tpope/vim-fireplace'
Plugin 'victorfeijo/binding-pry-vim'
Plugin 'dkprice/vim-easygrep'
Plugin 'w0ng/vim-hybrid'
" Plugin 'fatih/vim-go'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'ternjs/tern_for_vim'
Plugin 'godlygeek/tabular'
"
"
"
" Plugin 'astashov/vim-ruby-debugger'
" The following are examples of different formats supported.
" 
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
""Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
autocmd FileType c,cpp,java,php,ruby,python,javascript,typescript let g:ycm_cache_omnifunc = 1
let g:ycm_semantic_triggers =  {
			\   'c' : ['->', '.'],
			\   'objc' : ['->', '.'],
			\   'ocaml' : ['.', '#'],
			\   'cpp,objcpp' : ['->', '.', '::'],
			\   'java' : ['.', '::'],
			\   'perl' : ['->'],
			\   'php' : ['->', '::'],
			\   'cs,javascript,d,python,perl6,scala,vb,elixir,go,typescript' : ['.'],
			\   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
			\   'ruby' : ['.', '::'],
			\   'lua' : ['.', ':'],
			\   'erlang' : [':'],
			\ }
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in stringset nu
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/Documents/git/dotfiles/.ycm_extra_conf.py'

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v[\/](_rel|node_modules|target|dist|deps|build)|(\.(git|svn|swp))$',
			\ 'file': '\v\.(cache|exe|so|dll|beam)$',
			\ }
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_go_checkers = ['golint']

let g:ale_open_list = 'on_save'

" close errorlist (loc list) when main buffer closes
autocmd QuitPre * if empty(&bt) | lclose | endif

let g:ale_linters = {
\   'ruby': ['ruby'],
\}

let g:EasyGrepFilesToExclude='tags,.svn,.git,node_modules,dist'
let g:EasyGrepRecursive=1
let g:EasyGrepCommand='ag'
let mapleader=","

" inoremap <leader><leader> <Esc>
vnoremap <leader><leader> <Esc>
" inoremap <leader>w <Esc>:w<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <leader>q ZQ
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/
" nnoremap <leader>qa :qa<CR>
" nnoremap <leader>wq ZZ
" inoremap <leader>wq <Esc>ZZ
nnoremap <leader>= gg=G :%s/,\(\S\)/, \1/g<CR>
" inoremap <leader>1 <Esc>1gt
" inoremap <leader>2 <Esc>2gt
" inoremap <leader>3 <Esc>3gt
" inoremap <leader>4 <Esc>4gt
" inoremap <leader>5 <Esc>5gt
" inoremap <leader>6 <Esc>6gt
" inoremap <leader>7 <Esc>7gt
" inoremap <leader>8 <Esc>8gt
" inoremap <leader>9 <Esc>9gt
" inoremap <leader>] gt
" inoremap <leader>[ gT
nnoremap <leader>] gt
nnoremap <leader>[ gT
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
" nnoremap <leader>; <C-W>w
nnoremap <Leader>* :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
"
"NonLeader bindings
nnoremap Q i<CR><Esc>k$
nnoremap <F2> :set invpaste paste?<CR>
" Use ctrl-[hjkl] to select the active split!
nnoremap <silent> <c-k> :wincmd k<CR>
nnoremap <silent> <c-j> :wincmd j<CR>
nnoremap <silent> <c-h> :wincmd h<CR>
nnoremap <silent> <c-l> :wincmd l<CR>
tnoremap <Esc> <c-\><c-n>
tnoremap <c-h> <c-\><c-n><c-w>h
tnoremap <c-j> <c-\><c-n><c-w>j
tnoremap <c-k> <c-\><c-n><c-w>k
tnoremap <c-l> <c-\><c-n><c-w>l
nnoremap <silent> <c-n> :NERDTreeToggle<CR>

"next / prev
nnoremap ]b :bnext<CR>
nnoremap [b :bprev<CR>
nnoremap [c :cnext<CR>
nnoremap ]c :cprev<CR>
nnoremap \t :terminal ++curwin<cr>

set pastetoggle=<F2>
set showmode
" # by default, the indent is 2 spaces. 
set shiftwidth=4
set softtabstop=4
set tabstop=4
" # for html/rb files, 2 spaces
autocmd Filetype html setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd Filetype eruby setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd Filetype ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd Filetype yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd Filetype slim setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd Filetype clojure setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab

" # for js/coffee/jade files, 4 spaces
autocmd Filetype javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd Filetype coffeescript setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd Filetype jade setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd Filetype erlang setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd Filetype java setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd Filetype groovy setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab

set t_Co=256
set laststatus=2
set number
" set relativenumber
set clipboard=unnamed
set binary
set noeol
set background=dark
set ignorecase
set smartcase
set backspace=indent,eol,start
set scrolloff=1
set shell=/usr/local/bin/zsh
set encoding=utf-8

set hidden
colorscheme hybrid

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces