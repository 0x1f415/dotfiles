set shellslash
set nocompatible              " be iMproved, required
set ffs=unix
filetype off                  " required

set rtp+=~\vimfiles

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'othree/html5.vim'
Plug 'Shougo/neocomplete'
Plug 'scrooloose/syntastic'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdcommenter'
if has('python')
	Plug 'jaxbot/github-issues.vim'
endif
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-unimpaired'
Plug 'mhinz/vim-startify'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'jamessan/vim-gnupg'
"Plug 'vim-airline/vim-airline'
Plug 'kkoenig/wimproved.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim'
Plug 'Quramy/tsuquyomi'
call plug#end()

let g:ycm_seed_identifiers_with_syntax = 1

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute", "trimming empty", "<md-", "discarding unexpected"]
let g:syntastic_javascript_checkers = ['eslint', 'jshint']
let g:syntastic_enable_signs=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:gh_issues_query = "state:open user:me sort:created-asc"

let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

"" Syntastic
"let g:syntastic_error_symbol = '??'
"let g:syntastic_style_error_symbol = '??'
"let g:syntastic_warning_symbol = '??'

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
let g:airline#extensions#wordcount#enabled = 0

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufReadPost *.md set filetype=markdown
au BufRead * normal zR
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
autocmd GUIEnter * silent! WToggleClean
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

if filereadable(glob("~/.private.vim"))
    source ~/.private.vim
endif

colorscheme monokai
