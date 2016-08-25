set shellslash
set nocompatible              " be iMproved, required
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
Plugin 'mhinz/vim-startify'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:ycm_seed_identifiers_with_syntax = 1

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute", "trimming empty", "<md-", "discarding unexpected"]
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_enable_signs=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

let g:gh_issues_query = "state:open user:me sort:created-asc"

let g:ctrlp_working_path_mode = 0

let g:startify_list_order = ['sessions', 'bookmarks']
if !has('gui_running') && getcwd() != $HOME
	let g:startify_list_order += ['dir']
endif

if has('win32') || has('win32unix')
	let g:startify_bookmarks = [{'v': '~/dotfiles/.vimrc'}, {'z': '~/dotfiles/.zshrc'}]
else
	let g:startify_bookmarks = [{'v': '~/.vimrc'}, {'z': '~/.zshrc'}]
endif

au BufNewFile,BufRead *.ejs set filetype=html

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

if filereadable(glob("~/.private.vim"))
    source ~/.private.vim
endif
