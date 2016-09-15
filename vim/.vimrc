" A good link on vimrc http://dougblack.io/words/a-good-vimrc.html

"vimrc {{{
    augroup reload_vimrc " {
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
    augroup END "  }

    set nocompatible
    filetype off
"}}}

" Vundle" {{{
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    "Plugins {{

        Plugin 'gmarik/Vundle.vim'

        " Wordpress development plgin. Auto-completion, WP-CLI integration, Hooks Integration, jump to definition, UltiSnips Snippets, Syntax Highlighting, Search in codex, WPSeek Integration.
        Plugin 'dsawardekar/wordpress.vim'

        " Tab completion.
        Plugin 'ervandew/supertab'

        " Lean and mean status/tabline for vim that's light as air.
        Plugin 'bling/vim-airline'

        " Tag file manager.
        Plugin 'joonty/vim-taggatron'

        " Maintains a history of yanks, changes and delete.
        Plugin 'vim-scripts/YankRing.vim'

        " Distraction free writing.
        Plugin 'junegunn/goyo.vim'

        " Improves netrw
        Plugin 'tpope/vim-vinegar'

        " :BufOnly clears all buffers but the current one
        Plugin 'schickling/vim-bufonly'

        "This plugin provides a start screen for Vim and Neovim.
        Plugin 'mhinz/vim-startify'

        " Isolate part of a file to create a 'safe edit environment'
        Plugin 'ferranpm/vim-isolate'
        
        " Comment Better NERD
        Plugin 'scrooloose/nerdcommenter'

        " Vim Multiline
        Plugin 'terryma/vim-multiple-cursors'

        "Text {

            " Removes whitespace by :FixWhitespace.
            Plugin 'bronson/vim-trailing-whitespace'

            " Allows to easily align stuff
            Plugin 'junegunn/vim-easy-align'

            Plugin 'vitalk/vim-simple-todo'

            Plugin 'freitass/todo.txt-vim'

            " This will search the file for FIXME, TODO and XXX (or a custom list) and put them in a handy  list for you to browse  which at the same will update the location in the document to see where the tag is located
            Plugin 'vim-scripts/TaskList.vim'
        "}

        "Projects {

            " The unite or unite.vim plug-in can search and display information from arbitrary sources like files, buffers, recently used files or registers.
            Plugin 'Shougo/unite.vim'

            Plugin 'google/vim-searchindex'

            " Open multiple files at once. Create new files and directories. Buil-in project's root finder. Extensible.
            Plugin 'kien/ctrlp.vim'
        "}

        "NERDTree specific {

            " Keeps NERDTree independant of tabs.
            Plugin 'jistr/vim-nerdtree-tabs'

            Plugin 'scrooloose/nerdtree'
        "}

        "Git specific {

            " Shows 'git diff' in the gutter. Shows whether each line has been added, modified, and where lines have been removed.
            Plugin 'airblade/vim-gitgutter'

            " Git Wrapper
            Plugin 'tpope/vim-fugitive'
        "}

        "Markdown specific {

            " Syntax for markdown
            Plugin 'tpope/vim-markdown'
    "}

        "Syntax specific {

            " Syntax checking hacks.
            Plugin 'scrooloose/syntastic'

            Plugin 'jiangmiao/auto-pairs'

            " Makes it easier to remove, edit and add surrounding pairs like [, (, <. etc.
            Plugin 'tpope/vim-surround'
        "}

        "PHP specific {

            " PHP overrised highlights.
            Plugin 'StanAngeloff/php.vim'


            " Integrates PHP quality checking tools, to allow you to code to a particular standard and easily spot errors and violations.
            " XXX This plugin has been shit so far. PHPMD don't work (Needs installing) and can't get PSR coding standards to work with PHPCS
            "Plugin 'joonty/vim-phpqa.git'

            " PHP Code Sniffer. Can be used on the current PHP, JS or CSS file
            "Plugin 'bpearson/vim-phpcs' 

            " Improved PHP omni-completion. Based on the default phpcomplete.vim.
            Plugin 'shawncplus/phpcomplete.vim'

            " Uses ctags to get a list of tags within the project.
            Plugin 'vim-scripts/taglist.vim'

            " Automatically looks up the characteristics of the item you want to document and creates a Docblock skeleton for you.
            Plugin 'tobyS/pdv'

            " vmustache is an implementation of the Mustache template system in VIMScript.
            Plugin 'tobyS/vmustache'
        "}

        "Javascript specific {

            " vim-jquery-doc is a little plugin that helps you to look jQuery API doc website more quickly.
            Plugin 'lucapette/vim-jquery-doc'

            " Javascript bundle for vim, this bundle provides syntax and indent plugins.
            Plugin 'pangloss/vim-javascript'

            " Debug for Javascript.
            "Plugin 'wookiehangover/jshint.vim'

            " Another fucking jshint.
            Plugin 'walm/jshint.vim'

            " Syntax highlighting for JSX.
            "Plugin 'mxw/vim-jsx'
            
            "Jade syntax
            Plugin 'digitaltoad/vim-pug'

            "JSON syntax
            Plugin 'elzr/vim-json'
        "}

        "HTML specific {"

            " HTML5 omnicmomplete and syntax.
            Plugin 'othree/html5.vim'

            " The last tool I needed to become a vim convert.
            Plugin 'mattn/emmet-vim'
        "}

        "Twig specific {

            " Twig syntax
            Plugin 'evidens/vim-twig'
        "}

        "CSS & CSS Prepocessor specific {

            " SCSS syntax for vim.
            Plugin 'cakebaker/scss-syntax.vim'

            " LESS syntax
            " XXX Probably won't need this anytime soon. It's here just in case
            "Plugin 'groenewege/vim-less'
        "}
        
        "Ruby Specific {
            Plugin 'vim-ruby/vim-ruby'
        "}
        
        "I3 specific {

            " Adds syntax for i3 files
            Plugin 'PotatoesMaster/i3-vim-syntax'
        "}

        "Colors {
            Plugin 'altercation/vim-colors-solarized'

            Plugin 'flazz/vim-colorschemes'

            " PHP colorschemes to improve syntax highlighting
            Plugin 'modess/vim-phpcolors'

            Plugin 'chriskempson/base16-vim'

            "Plugin 'jonathanfilip/vim-lucius'
        "}
    "}}

    call vundle#end()
"}}}

"Font {{{
        set guifont=Monospace\ 40
"}}}

"General {{{
    set autochdir

    " Visual autocomplete for command menu
    set wildmenu

    "set ruler

    " No more annoying flash
    set noerrorbells visualbell t_vb=

    set ignorecase
    set confirm
    set laststatus=2

    " Redraw only when required
    set lazyredraw
"}}}

" Vim Search {{{

    " Prevents vim search being case sensitive
    set smartcase

    " Search as characters are entered
    set incsearch

    " Highlight matches
    set hlsearch

    " The Silver Searcher

        if executable('ag')
            " Use ag over grep
            set grepprg=ag\ --nogroup\ --nocolor

            " Use ag in CtrlP for listing files. lightning fast and respsects 
            " .gitignore
            let g:ctrlp_user_command = 'ag %s -l --nocolor - g ""'

            " ag is fast enough that CtrlP doesn't need to cache
            let g:ctrlp_use_caching = 0
        endif
"}}}

" Syntax {{{
    "Highlighting {{
        syntax on

        " Highlights matching brackets
        set showmatch
    "}}

    " Makes vim not look so fugly
    set t_Co=256

    autocmd BufEnter *              colorscheme         apprentice
    autocmd BufEnter *.scss         colorscheme         Tomorrow-Night
   "autocmd BufEnter *.conf         colorscheme         badwolf
    autocmd BufEnter *.conf         colorscheme         base16-google
   "autocmd BufEnter *.php          colorscheme         jellybeans
    autocmd BufEnter *.php          colorscheme         base16-google
   "autocmd BufEnter *.js           colorscheme         ChocolateLiquor
    autocmd BufEnter *.js           colorscheme         base16-google
    autocmd BufEnter *.pug           colorscheme         base16-google

    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    autocmd FileType js let JSHintToggle

"}}}

"Make it better for reading my shit {{{
    set backspace=indent,eol,start
    set number
    set showmode
    set showcmd
    set listchars=tab:->
    set cursorline

    " load filtype-specific indent files
    " TODO set indent files
    filetype indent on

    "Folding {{

        " enable folding
        set foldenable

        " Fold based on syntax
        set foldmethod=manual

        " Open all folds by default. 99 = all folds open is guaranteed. 0 = all folds will be closed
        set foldlevelstart=0

        set foldlevel=0

        " Maximum of 10 nested folds
        set foldnestmax=10

        set modelines=1

        autocmd BufWinLeave *.* mkview
        autocmd BufWinEnter *.* silent loadview

        let php_folding=1

        let javaScript_fold=1
    "}}

    "Indentation {{

        " Fixed ma tabs =D =D :D :D. Tears of joy!!
        set shiftwidth=4

        " Number of visual spaces per TAB
        set tabstop=4

        " Number of spaces in tab when editing
        set softtabstop=4

        " Tabs are spaces
        set expandtab
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
    " Open new split panes to right and bottom, which feels more natural
    set splitbelow splitright
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
        let g:ctrlp_working_path_mode = 'ra'
        let g:ctrlp_switch_buffer = 'Et'
        let g:ctrlp_clear_cache_on_exit = 1
        let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
        let g:ctrlp_show_hidden = 1
        let g:ctrlp_max_files = 500

        "let g:ctrlp_custom_ignore = {
        "        \ 'dir': '\v[\/]\.(git|)'
        "}
    "}}

    "OmniCompletion {{
        filetype plugin on
        set omnifunc=syntaxcomplete#Complete
    "}}
    "Jellybeans {{
        let g:jellybeans_use_lowercolor_black = 0
    "}}

    "PHPQA {
        " Set PHPCS args
        let g:phpqa_codesniffer_args = "--standard=PSR1,PSR2"

        " Don't let PHPCS run on save (default = 1)
        let g:phpqa_codesniffer_autorun = 0
        let g:phpmd_codesniffer_autorun = 0
    "}

    "Taggatron {{
        \"php" : {
        \       "tagfile" : ".php.tags",     " Location of the tag file
        \       "args" : "-R",   " Arguments to pass to the command (-f and --languages are added automatically)
        \       "cmd" : "ctags-exuberant",   " Command to execute
        \       "filesappend" : "**"     " This is appended to the current working directory, and used as the files argument
        \}
    "}}

    "SuperTab {{
        let g:SuperTabDefaultCompletionType = ""                                " <TAB> now triggers omnicompletion
    "}}


    "NERDTree {{

        " As the code so obviously says: open on Vim Startup
        "let g:nerdtree_tabs_open_on_console_startup=1
        let g:NERDTreeDirArrows = 0
    "}}
    
    "Base-16 {{
    " Access colors present in 256 colorspace
        let base16colorspace=256 
    "}}
    
    "php.vim {{
        " Syntax
        function! PhpSyntaxOverride()
            hi def link phpComment          Comment
            hi def link phpMagicConstants   Constant
            hi def link phpServerVars       Constant
            hi def link phpConstants        Constant
            hi def link phpBoolean          Boolean
            hi def link phpNumber           Number
            hi def link phpStringSingle     String
            hi def link phpStringDouble     String
            hi def link phpBacktick         String
            hi def link phpStringDelimiter  String
            hi def link phpHereDoc          String
            hi def link phpNowDoc           String
            hi def link phpFunctions        Function
            hi def link phpMethods          Function
            hi def link phpClasses          StorageClass
            hi def link phpException        Exception
            hi def link phpIdentifier       Identifier
            hi def link phpIdentifierSimply Identifier
            hi def link phpStatement        Statement
            hi def link phpStructure        Statement
            hi def link phpOperator         Operator
            hi def link phpMemberSelector   Operator
            hi def link phpInclude          PreProc
            hi def link phpDefine           PreProc
            hi def link phpKeyword          Keyword
            hi def link phpSuperglobals     Type
            hi def link phpType             Type
            hi def link phpParent           Special
            hi def link phpSpecialChar      SpecialChar
            hi def link phpStrEsc           SpecialChar
            hi def link phpParentError      Error
            hi def link phpOctalError       Error
            hi def link phpTodo             Todo

            hi def link phpSplatOperator    phpOperator

            hi def link phpCommentStar      phpComment
            hi def link phpDocComment       phpComment
            hi def link phpCommentTitle     phpComment
            hi def link phpDocTags          phpComment
            hi def link phpDocParam         phpComment
            hi def link phpDocIdentifier    phpComment

            hi def link phpFCKeyword        phpKeyword
            hi def link phpSCKeyword        phpKeyword

            hi def link phpStaticClasses    phpClasses

            if (exists("php_var_selector_is_identifier") && php_var_selector_is_identifier)
                hi def link phpVarSelector    phpIdentifier
            else
                hi def link phpVarSelector    phpOperator
            endif

            hi def link phpFunction        phpRegion
            hi def link phpClass           phpRegion
            hi def link phpClassExtends    phpClass
            hi def link phpClassImplements phpClass
            hi def link phpClassDelimiter  phpRegion
        endfunction

        augroup phpSyntaxOverride
            autocmd!
            autocmd FileType php call PhpSyntaxOverride()
        augroup END
    "}}
    
    "phpcomplete {{
        let g:phpcomplete_complete_for_unknown_classes = 1
    "}}
"}}}

"Key Maps {{{
    "General {{
        imap jj <ESC>
        map <Space> <Return>
        :map <leader>o :BuffExplorer<cr>
        :let mapleader = ","
        let mapleader = ","
        nnoremap <leader><space> :nohlsearch<cr>

        " Saves an assortment of windows. Reopen the session usigng vim -S
        nnoremap <leader>a :mksession<cr>
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

    "ag {{
        " bind ± to grep word under cursor
        nnoremap ± :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

        " bind \ to grep shortcut
        "command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

        nnoremap \ a:Ag<SPACE>
    "}}
"}}}
