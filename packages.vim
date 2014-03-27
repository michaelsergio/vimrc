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


" File tree Browser
Plugin 'scrooloose/nerdtree'

" Language Specific 
Plugin 'tpope/vim-rails.git'
Plugin 'jnwhiteh/vim-golang'

" Quick generation of HTML
" Fork of zen coding
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Knows how to lint files.
" Always add command for language used
Plugin 'scrooloose/syntastic'

" Dash Plugins
" Dash is used for looking up documentation on OS X
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'

" Colors!
Plugin 'gmist/vim-palette'

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


" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..
"
" Source Reminders:
" Plugin 'vimscript_package'
" Plugin 'git://nongithub_source/command-t.git'
" Plugin 'github/package_from_github'
" Plugin 'file:///Users/gmarik/path/to/plugin'
