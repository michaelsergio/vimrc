" File: .vimrc
" Author: Michael Sergio
" Description: My Vimrc file using bundler
" Last Modified: November 27, 2013

" See README.md for more installation instructions
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
set wildmenu " Pretty completion menu
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
  autocmd!
  au BufRead,BufNewFile *.rhtml setfiletype eruby
  au BufRead,BufNewFile *.pde   setfiletype java
  au BufRead,BufNewFile *.markdown,*.mdown,*.mkd,*.mkdn,*.md  setf markdown
  " Set spell on commit messages.
  au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

  " Podspecs
  " This should work but doesnt. I need to fix this.
  " au BufNewFile,BufRead,BufWrite *.podspec setfiletype=ruby
  " au BufNewFile,BufRead,BufWrite *.podspec setlocal filetype=podspec
  " au BufNewFile,BufRead Podfile setlocal filetype=podfile
  " au FileType podspec,podfile set syntax=ruby
  " au FileType podspec set makeprg=pod\ spec\ lint\ %
  " au FileType podfile set makeprg=pod\ install
augroup END

augroup python
  let g:syntastic_python_checkers=['pylint', 'pep8']
  au FileType python set autoindent smartindent et sts=4 sw=4 tw=80 fo=croq
augroup END

augroup go
  filetype off
  filetype plugin indent off
  set runtimepath+=$GOROOT/misc/vim
  filetype plugin indent on
  syntax on
  "set tabstop=4 noexpandtab
  autocmd FileType go autocmd BufWritePre <buffer> Fmt
augroup END

augroup latex
  set spell
augroup END

" Always use 80 character line limits
" Set to 0 to disable
set textwidth=80

" Syntastic lints to use
let g:syntastic_javascript_checkers=['jslint']

" Have Ag hightlight search terms
let g:aghighlight=1

" Specify language tool jar for grammar checks with
" :LanguageToolCheck
let g:languagetool_jar=$GRAMMAR_TOOL

" Airline configuration
let g:airline_theme="powerlineish"
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_min_count = 2
" unicode support
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
" whitespace detection is annoying
let g:airline#extensions#whitespace#enabled = 0

" Always have status line on (Needed for airline)
set laststatus=2

" Make sure backspace always works in append mode
" Without this it only backspaces newly appended text
" Most distros seems to use this by default
" Homebrew vim HEAD (7.4.273) does not
set backspace=indent,eol,start

" Allow scrolling in terminals (at least iTerm2 for mac)
set mouse=a

" For ^A ^X
" Octal is almost always wrong by default IMO (times that are 1:07)
set nrformats=hex

" Sudo Save when vim accidentally opened without sudo
cmap w!! %!sudo tee > /dev/null %

command OnlineHelp ! google-chrome http://vimhelp.appspot.com/usr_toc.txt.html

command HideComments highlight! link Comment Ignore
command ShowComments highlight! link Comment Comment

" Switches to a hex editor view using xxd
command HexView %!xxd
command HexViewReturn %!xxd -r

" Add a cheat sheet for search command (I always forget!)
command SearchHelp sview ~/.vim/search_tips.markdown
" Cheat sheet for other random intresting things
command Tips sview ~/.vim/tips.markdown

" Common misspelling should go here
" iabbrev  seperate  separate


" Format Javascript code on save
au BufWritePost *.js silent !jsfmt --format --write % | edit

