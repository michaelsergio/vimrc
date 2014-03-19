" let Vundle manage Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" required! 
 Bundle 'gmarik/vundle'

" Some of tpopes improvements
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-abolish'

" Improved Vim movement 
Bundle 'Lokaltog/vim-easymotion'

" Makes visual C-A work properly
Bundle 'triglav/vim-visual-increment'


" File tree Browser
Bundle 'scrooloose/nerdtree'

" Language Specific 
Bundle 'tpope/vim-rails.git'
Bundle 'jnwhiteh/vim-golang'

" Quick generation of HTML
" Fork of zen coding
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" Knows how to lint files.
" Always add command for language used
Bundle 'scrooloose/syntastic'

" Dash Bundles
" Dash is used for looking up documentation on OS X
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" Colors!
Bundle 'gmist/vim-palette'

" Snipmate and dependencies from Github
" Code snippet support
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'honza/vim-snippets'

" Makes % matching work on strings and comments
Bundle 'matchit.zip'

" Comment anything with gcc 
Bundle 'tComment'

" See tags in sidebar
Bundle 'Tagbar'

" Open files
Bundle 'kien/ctrlp.vim'

" Adds Ag command to vim
" The Silver Search - A better grep/ack
Bundle 'rking/ag.vim'


" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
" Source Reminders:
" Bundle 'vimscript_package'
" Bundle 'git://nongithub_source/command-t.git'
" Bundle 'github/package_from_github'
" Bundle 'file:///Users/gmarik/path/to/plugin'
