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
Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/html5.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
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
autocmd FileType erlang let g:ycm_cache_omnifunc = 0
autocmd FileType c,cpp,java,php,ruby,python,javascript,typescript let g:ycm_cache_omnifunc = 1
let g:ycm_semantic_triggers =  {
			\   'c' : ['->', '.'],
			\   'objc' : ['->', '.'],
			\   'ocaml' : ['.', '#'],
			\   'cpp,objcpp' : ['->', '.', '::'],
			\   'perl' : ['->'],
			\   'php' : ['->', '::'],
			\   'cs,java,javascript,d,python,perl6,scala,vb,elixir,go,typescript' : ['.'],
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
			\ 'dir':  '\v[\/](node_modules|target|dist)|(\.(git|svn|swp))$',
			\ 'file': '\v\.(cache|exe|so|dll)$',
			\ }

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_check_on_open = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d' "Background server for eslint
let g:syntastic_ruby_exec = '/Users/anoop/.rbenv/versions/2.3.1/bin/ruby'

" let g:ruby_debugger_debug_mode = 1
" let g:ruby_debugger_spec_path = 'rspec'
" let g:ruby_debugger_default_script = 'rails s -p4567'
" let g:ruby_debugger_no_maps = 1
let g:jsx_ext_required = 0 " Allow JSX in normal JS files


let mapleader=";"
inoremap <leader>w <Esc>:w<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <leader>q ZQ
nnoremap <leader>wq ZZ
inoremap <leader>wq <Esc>ZZ
nnoremap <leader>= gg=G
nnoremap <leader>h <h
nnoremap <leader>l >h
inoremap <leader><leader> <Esc>

"NonLeader bindings
nnoremap Q i<CR><Esc>k$
nnoremap <F2> :set invpaste paste?<CR>

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

" # for js/coffee/jade files, 4 spaces
autocmd Filetype javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd Filetype coffeescript setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
autocmd Filetype jade setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
set t_Co=256
set laststatus=2
set nu
set clipboard=unnamed
colorscheme mustang
" Put your non-Plugin stuff after this line
