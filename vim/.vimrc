set nocompatible
filetype off

"----Vundle----"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"----Plugins----"
Plugin 'tpope/vim-fugitive'											" Git Wrapper
Plugin 'scrooloose/syntastic'										" Syntax checking hacks.
Plugin 'dsawardekar/wordpress.vim'							" Wordpress development plugin. Auto-completion, WP-CLI integration, Hooks Integration, jump to defition, UltiSnips Snippets, Syntax Highlighting, Search in Codex, WpSeek Integration.

Plugin 'mattn/emmet-vim'
Plugin 'ervandew/supertab'											" Tab completion.
Plugin 'evidens/vim-twig'                       " Twig syntax
Plugin 'othree/html5.vim'												" HTML5 omnicomplete and syntax.
Plugin 'pangloss/vim-javascript'								" Javascript bundle for vim, this bundle provides syntax and indent plugins.
Plugin 'maksimr/vim-jsbeautify'									" Use jsbeautifier inside vim to format js, html and css files.
Plugin 'lucapette/vim-jquery-doc'								" vim-jquery-doc is a little plugin that helps you to look up jQuery API doc website more quickly.
Plugin 'mxw/vim-jsx'														" Syntax hightlighting for JSX.
Plugin 'cakebaker/scss-syntax.vim'							" SCSS syntax for vim.
Plugin 'tpope/vim-surround'											" Makes it easier to remove, edit and add surrounding pairs like [ , (, <, etc.
Plugin 'tpope/vim-commentary'										" Comment out lines using 'gcc', 'gc' comment out target of motion and 'gcu' to comment out adjacent lines.
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'								" Keeps NERDTree independant of tabs.
Plugin 'Shougo/unite.vim'												" The unite or unite.vim plug-in can search and display information from arbitrary sources like files, buffers, recently used files or registers.
Plugin 'kien/ctrlp.vim'													" Open multiple files at once. Create new files and directories. Built-in project's root finder. Extensible.
Plugin 'YankRing.vim'														" Maintains a history of yanks, changes and deletes.
Plugin 'bling/vim-airline'											" Lean & mean status/tabline for vim that's light as air.
Plugin 'junegunn/goyo.vim'											" Distraction-free writing. :Goyo to toggle :Goyo! to turn off :Goyo [dimension] to resize.
Plugin 'bronson/vim-trailing-whitespace'				" Removes whitespace by :FixWhitespace.
Plugin 'groenewege/vim-less'							      " LESS syntax
Plugin 'StanAngeloff/php.vim'                       " PHP overides highlights
Plugin 'airblade/vim-gitgutter'									" Shows 'git diff' in the gutter. Shows whether each line has been added, modified, and where lines have been removed.
Plugin 'junegunn/vim-easy-align'								" Allows to easily align stuff


"----Colors----""
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

"--Syntax
autocmd BufEnter *.scss colorscheme		Tomorrow-Night
autocmd BufEnter *.conf colorscheme		badwolf
autocmd BufEnter *.php	colorscheme		apprentice
autocmd BufEnter *.js		colorscheme		ChocolateLiquor
autocmd BufEnter *			colorscheme		apprentice
"autocmd BufEnter *.js		colorscheme		solarized

"----This is to remain underneath plugins----"
call vundle#end()

"----Font----"
set guifont=Monospace\ 40

"----General---"
"set autochdir
set wildmenu
set ruler
set t_Co=256							                          " Makes vim not look so fugly
"let g:nerdtree_tabs_open_on_console_startup=1			" As the code so obviously says: open on Vim Startup
set noerrorbells visualbell t_vb=										" No more annoying flash
set smartcase                                           " Prevents vim search from being case sensitive
set confirm
set ignorecase
set laststatus=2

"----Syntax----"
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

""----Make it better for reading my shit---"
set autoindent
set smartindent
"set foldlevel=1
"set foldmethod=syntax
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set backspace=indent,eol,start
set wrap
set number
set showmode
set showcmd
set showmatch											" Show's matching brackets
set listchars=tab:->

"----Windows/Panels----"
set splitbelow										" Open new split panes to right and bottom, which feels more natural
set splitright
"
"
"----Highlighting---"

"----Backup----"
set history=400
set undolevels=1000

syntax on 

"----Airline----"
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = '>'

"----Key Maps----"

"--General
imap jj <ESC>
map <Space> <Return>
:let mapleader = ","

let mapleader = ","
:map <leader>o :BuffExplorer<cr>

""--NERDTree
map <leader>nn :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFocus<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nff :NERDTreeFind<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
map <leader>n  :NERDTree<cr>
nmap <Space> <Enter>

"--Easy-align
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
