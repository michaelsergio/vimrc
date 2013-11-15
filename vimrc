" Install Vundle first
"  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Syntastic'
"Bundle 'taglist.vim'
Bundle 'Tagbar'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

set softtabstop=2 shiftwidth=2 expandtab
set ruler
set nu
set cindent
set hidden
set hlsearch
syntax enable


" NERDTree coniguration
map <F2> :NERDTreeToggle<CR>
"map <F3> :TlistToggle<CR>
map <F3> :TagbarToggle<CR>
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
" Close all open buffers on entering a window if the only
"   " buffer that's left is the  NERDTre
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

augroup filetypedetect
au! BufRead,BufNewFile *.rhtml setfiletype eruby
au! BufRead,BufNewFile *.pde   setfiletype java
au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell
augroup END

augroup python
  let g:syntastic_python_checkers=['pylint', 'pep8']
  au FileType python set autoindent smartindent et sts=4 sw=4 tw=80 fo=croq
augroup END

" Sudo Save when vim accidentally opened without sudo
cmap w!! %!sudo tee > /dev/null %
