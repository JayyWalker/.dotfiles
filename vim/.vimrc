set nocompatible
filetype off

"----Vundle----"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"----Plugins----"
Plugin 'tpope/vim-fugitive'											" Git Wrapper
Plugin 'maksimr/vim-jsbeautify'									" Use jsbeautifier inside vim to format js, html and css files.
Plugin 'scrooloose/syntastic'										" Syntax checking hacks.
Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'											" Tab completion.
Plugin 'othree/html5.vim'												" HTML5 omnicomplete and syntax.
Plugin 'pangloss/vim-javascript'								" Javascript bundle for vim, this bundle provides syntax and indent plugins.
Plugin 'mxw/vim-jsx'														" Syntax hightlighting for JSX.
Plugin 'cakebaker/scss-syntax.vim'							" SCSS syntax for vim.
Plugin 'tpope/vim-surround'											" Makes it easier to remove, edit and add surrounding pairs like [ , (, <, etc.
Plugin 'tpope/vim-commentary'										" Comment out lines using 'gcc', 'gc' comment out target of motion and 'gcu' to comment out adjacent lines.
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'								" Keeps NERDTree independant of tabs.
Plugin 'Shougo/unite.vim'												" The unite or unite.vim plug-in can search and display information from arbitrary sources like files, buffers, recently used files or registers.
Plugin 'kien/ctrl.vim'													" Open multiple files at once. Create new files and directories. Built-in project's root finder. Extensible.
Plugin 'YankRing.vim'														" Maintains a history of yanks, changes and deletes.
Plugin 'bling/vim-airline'											" Lean & mean status/tabline for vim that's light as air.
Plugin 'junegunn/goyo.vim'											" Distraction-free writing. :Goyo to toggle :Goyo! to turn off :Goyo [dimension] to resize.
Plugin 'bronson/vim-trailing-whitespace'				" Removes whitespace by :FixWhitespace.

"----Colors----""
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

colorscheme apprentice
autocmd BufEnter *.scss colorscheme Tomorrow-Night
autocmd BufEnter *.conf colorscheme badwolf

"----This is to remain underneath plugins----"
call vundle#end()

"----Font----"
set guifont=Monospace\ 40

"----General---"
set wildmenu
set ruler
set t_Co=256
"let g:nerdtree_tabs_open_on_console_startup=1			" As the code so obviously says: open on Vim Startup

"----Syntax----"
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
set noerrorbells visualbell t_vb=										" No more annoying flash

"----Make it better for reading my shit---"
set autoindent 
set smartindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set wrap
set number
set showmode
set showcmd
set showmatch											" Show's matching brackets

"----Highlighting---"

"----Backup----"
set history=400
set undolevels=1000



syntax on

"----Airline----"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '



"----Key Maps----"

"--General
imap jj <ESC>
imap ~  #
map <Space> <Return>
:let mapleader = ","

let mapleader = ","
:map <leader>o :BuffExplorer<cr>

"--NERDTree
map <leader>nn :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFocus<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nff :NERDTreeFind<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
map <leader>n  :NERDTree<cr>

nmap <Space> <Enter>
