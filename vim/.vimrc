"vimrc {{{
    augroup reload_vimrc " {
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
    augroup END "  }
"}}}

set nocompatible
filetype off

" Vundle" {{{
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    "Plugins {{
        Plugin 'gmarik/Vundle.vim'
        Plugin 'dsawardekar/wordpress.vim'              " Wordpress development plugin. Auto-completion, WP-CLI integration, Hooks Integration, jump to defition, UltiSnips Snippets, Syntax Highlighting, Search in Codex, WpSeek Integration.
        Plugin 'ervandew/supertab'                      " Tab completion.
        Plugin 'bling/vim-airline'                      " Lean & mean status/tabline for vim that's light as air.
        Plugin 'YankRing.vim'                           " Maintains a history of yanks, changes and deletes.

        "Text {
            Plugin 'bronson/vim-trailing-whitespace'        " Removes whitespace by :FixWhitespace.
            Plugin 'junegunn/vim-easy-align'                " Allows to easily align stuff
            Plugin 'vim-simple-todo'
            Plugin 'todo.txt-vim'
        "}

        "Projects {
            Plugin 'Shougo/unite.vim'                       " The unite or unite.vim plug-in can search and display information from arbitrary sources like files, buffers, recently used files or registers.
            Plugin 'vim-searchindex'
            Plugin 'kien/ctrlp.vim'                         " Open multiple files at once. Create new files and directories. Built-in project's root finder. Extensible.
        "}

        "NERDTree specific {
            Plugin 'jistr/vim-nerdtree-tabs'                " Keeps NERDTree independant of tabs.
            Plugin 'scrooloose/nerdtree'
        "}

        "Git specific {
            Plugin 'airblade/vim-gitgutter'                 " Shows 'git diff' in the gutter. Shows whether each line has been added, modified, and where lines have been removed.
            Plugin 'tpope/vim-fugitive'                     " Git Wrapper
        "}

        "Syntax specific {
            Plugin 'scrooloose/syntastic'                   " Syntax checking hacks.
            Plugin 'jiangmiao/auto-pairs'
            Plugin 'tpope/vim-surround'                     " Makes it easier to remove, edit and add surrounding pairs like [ , (, <, etc.
        "}

        "PHP specific {
            Plugin 'StanAngeloff/php.vim'                   " PHP overides highlights
            Plugin 'joonty/vim-phpqa.git'                   " This is a plugin for Vim that integrates PHP quality checking tools, to allow you to code to a particular standard and easily spot errors and violations. 
        "}

        "Javascript specific {
            Plugin 'lucapette/vim-jquery-doc'              " vim-jquery-doc is a little plugin that helps you to look up jQuery API doc website more quickly.
            Plugin 'pangloss/vim-javascript'               " Javascript bundle for vim, this bundle provides syntax and indent plugins.
            Plugin 'maksimr/vim-jsbeautify'                " Use jsbeautifier inside vim to format js, html and css files.
            "Plugin 'mxw/vim-jsx'                           " Syntax hightlighting for JSX.
        "}

        "HTML specific {"
            Plugin 'othree/html5.vim'                      " HTML5 omnicomplete and syntax.
            Plugin 'mattn/emmet-vim'                       " The last tool I needed to become a vim convert.
        "}

        "Twig specific {
            Plugin 'evidens/vim-twig'                      " Twig syntax
        "}
        
        "CSS & CSS Prepocessor specific {
            Plugin 'cakebaker/scss-syntax.vim'             " SCSS syntax for vim.
            Plugin 'groenewege/vim-less'                   " LESS syntax
        "}

        "Colors {
            Plugin 'altercation/vim-colors-solarized'
            Plugin 'flazz/vim-colorschemes'
        "}
    "}}

    call vundle#end()
"}}}

"Font {{{
    set guifont=Monospace\ 40
"}}}

"General {{{
    set autochdir
    set wildmenu
    set ruler
    set t_Co=256                                            " Makes vim not look so fugly
    set noerrorbells visualbell t_vb=                       " No more annoying flash
    set smartcase                                           " Prevents vim search from being case sensitive
    set ignorecase
    set confirm
    set laststatus=2
"}}}

" Syntax {{{
    autocmd BufEnter *.scss     colorscheme     Tomorrow-Night
    autocmd BufEnter *.conf     colorscheme     badwolf
    autocmd BufEnter *.php      colorscheme     apprentice
    autocmd BufEnter *.js       colorscheme     ChocolateLiquor
    autocmd BufEnter *          colorscheme     apprentice
    "autocmd BufEnter *.js      colorscheme     solarized

    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

    "Highlighting {{
        syntax on 
        set showmatch                                           " Show's matching brackets
    "}}
"}}}

"Make it better for reading my shit {{{
    set backspace=indent,eol,start
    set number
    set showmode
    set showcmd
    set listchars=tab:->

    "Folding {{
      "set foldlevel=1
      "set foldmethod=syntax
    "}}

    "Indentation {{
        set autoindent
        set smartindent
        set shiftwidth=4
        set indentkeys-=0#
        set softtabstop=4
        set tabstop=4
    "}}

    "Wrap Text {{
        set wrap
        set formatoptions+=tw21
        set showbreak=↪
        set textwidth=0
        set wrapmargin=0
        set linebreak
        set nolist
    "}}
"}}}

"Windows/Panels {{{
    set splitbelow                                      " Open new split panes to right and bottom, which feels more natural
    set splitright
"}}}

"Backup {{{
    set history=400
    set undolevels=1000
"}}}

"Plugin options {{{

    "Airline {{
        let g:airline#extensions#tabline#enabled = 1
        "let g:airline#extensions#tabline#left_sep = '>'
    "}}

    "CtrlP {{
        let g:ctrlp_working_path_mode = 'c'
        let g:ctrlp_switch_buffer = 'Et'
        let g:ctrlp_clear_cache_on_exit = 1
        let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
        let g:ctrlp_show_hidden = 1
        let g:ctrlp_max_files = 500

        "let g:ctrlp_custom_ignore = {
        "    \ 'dir': '\v[\/]\.(git|)'
        "}
    "}}

    "NERDTree {{
        "let g:nerdtree_tabs_open_on_console_startup=1          " As the code so obviously says: open on Vim Startup
    "}}
"}}}

"Key Maps {{{
    "General {{
        imap jj <ESC>
        map <Space> <Return>
        :map <leader>o :BuffExplorer<cr>
        :let mapleader = ","
        let mapleader = ","
    "}}

    "CtrlP {{
        nnoremap <silent>t :CtrlP<cr>
    "}}

    "EmmetVim {{
        " Gave up on this. Try it another time
        " imap hh <C-y>,

    "Easy-align {{
        " Start interactive EasyAlign for a motion/text object (e.g. gaip)
        nmap ga <Plug>(EasyAlign)

        " Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
        vmap <Enter> <Plug>(EasyAlign)
    "}}

    "NERDTree {{
        map <leader>nn :NERDTreeToggle<cr>
        map <leader>nf :NERDTreeFocus<cr>
        map <leader>nb :NERDTreeFromBookmark
        map <leader>nff :NERDTreeFind<cr>
        map <leader>nb :NERDTreeFromBookmark
        map <leader>nf :NERDTreeFind<cr>
        map <leader>n  :NERDTree<cr>
        nmap <Space> <Enter>
    "}}
"}}}

