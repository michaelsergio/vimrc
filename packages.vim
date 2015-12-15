" let Vundle manage Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" required! 
Plugin 'gmarik/vundle'

" Some of tpopes improvements
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'

" Improved Vim movement 
Plugin 'Lokaltog/vim-easymotion'

" Makes visual C-A work properly
Plugin 'triglav/vim-visual-increment'


" Autocomplete
"Plugin 'Valloric/YouCompleteMe'

" File tree Browser
Plugin 'scrooloose/nerdtree'

" Language Specific 
Plugin 'tpope/vim-rails.git'
Plugin 'jnwhiteh/vim-golang'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'toyamarinyon/vim-swift'
Plugin 'lukerandall/haskellmode-vim'
Plugin 'enomsg/vim-haskellConcealPlus'
Plugin 'derekwyatt/vim-scala'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'
Plugin 'carlosgaldino/elixir-snippets'
Plugin 'digitaltoad/vim-jade'
Plugin 'tclem/vim-arduino'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'rust-lang/rust.vim'

Plugin 'jbohren/vim-ros' 
Plugin 'vim-scripts/a.vim' " Alternate Files for .c->.h with :A
Plugin 'vim-scripts/ifdef-highlighting'
Plugin 'AndrewRadev/linediff.vim'

" Quick generation of HTML
" Fork of zen coding
Plugin 'mattn/emmet-vim'
Plugin 'gregsexton/MatchTag'

" Have tmux play nice with vim
Plugin 'christoomey/vim-tmux-navigator'

" Knows how to lint files.
" Always add command for language used
Plugin 'scrooloose/syntastic'

" Have search put a count in the status line
Plugin 'henrik/vim-indexed-search'


" Dash Plugins
" Dash is used for looking up documentation on OS X
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'

" Colors!
Plugin 'flazz/vim-colorschemes'

" Snipmate and dependencies from Github
" Code snippet support
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Makes % matching work on strings and comments
Plugin 'matchit.zip'

" Comment anything with gcc 
Plugin 'tComment'

" See tags in sidebar
Plugin 'Tagbar'

" Open files
Plugin 'kien/ctrlp.vim'

" Adds Ag command to vim
" The Silver Search - A better grep/ack
Plugin 'rking/ag.vim'

" Awesome status bar
Plugin 'bling/vim-airline'

" Tab align variables. For work :(
Plugin 'godlygeek/tabular'

" Grammer Checker
Plugin 'vim-scripts/LanguageTool'

" MRU files on startup.
Plugin 'mhinz/vim-startify'

" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ " NOTE: comments after Plugin command are not allowed..
"
" Source Reminders:
" Plugin 'vimscript_package'
" Plugin 'git://nongithub_source/command-t.git'
" Plugin 'github/package_from_github'
" Plugin 'file:///Users/gmarik/path/to/plugin'
