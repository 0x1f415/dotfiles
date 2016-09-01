set shellslash
set nocompatible              " be iMproved, required
set ffs=unix
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'othree/html5.vim'
Plugin 'Shougo/neocomplete'
Plugin 'scrooloose/syntastic'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdcommenter'
if has('python')
	Plugin 'jaxbot/github-issues.vim'
endif
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'mhinz/vim-startify'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'jamessan/vim-gnupg'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:ycm_seed_identifiers_with_syntax = 1

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute", "trimming empty", "<md-", "discarding unexpected"]
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_signs=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:gh_issues_query = "state:open user:me sort:created-asc"

let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

let g:startify_list_order = ['sessions', 'bookmarks']
if !has('gui_running') && getcwd() != $HOME
	let g:startify_list_order += ['dir']
endif

if has('win32') || has('win32unix')
	let g:startify_bookmarks = [{'v': '~/dotfiles/.vimrc'}, {'z': '~/dotfiles/.zshrc'}]
else
	let g:startify_bookmarks = [{'v': '~/.vimrc'}, {'z': '~/.zshrc'}]
endif

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_y = ''
let g:airline_section_z = '%p%%'
let g:airline#extensions#whitespace#checks = ['indent', 'trailing']

au BufNewFile,BufRead *.ejs set filetype=html
set laststatus=2
syntax on
set number
set splitbelow
set splitright
highlight LineNr ctermfg=grey
set updatetime=750
set tabstop=4
set shiftwidth=4
set mouse=a
set incsearch
autocmd filetype crontab setlocal nobackup nowritebackup
autocmd BufEnter * :syntax sync fromstart
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

if filereadable(glob("~/.private.vim"))
    source ~/.private.vim
endif
