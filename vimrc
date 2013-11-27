" File: .vimrc
" Author: Michael Sergio
" Description: My Vimrc file using bundler
" Last Modified: November 27, 2013

" Install Vundle first
"  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"


" be iMproved
set nocompatible
" required

" Use Vundle to manage plugins
so ~/.vim/packages.vim


filetype plugin indent on     " required!

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
au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown
au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell
augroup END

augroup python
  let g:syntastic_python_checkers=['pylint', 'pep8']
  au FileType python set autoindent smartindent et sts=4 sw=4 tw=80 fo=croq
augroup END


let g:syntastic_javascript_checkers=['jslint']

" Sudo Save when vim accidentally opened without sudo
cmap w!! %!sudo tee > /dev/null %

" Add a cheat sheet for search command (I always forget!)
command SearchHelp sview ~/.vim/search_tips.markdown
