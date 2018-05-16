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


" Force gnome-terminal to use 256 color.
" It can, but does not by default for some dumb reason.
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

filetype plugin indent on     " required!

" I don't usually want this, but left here for when needed.
set ignorecase

set softtabstop=2 shiftwidth=2 expandtab
set ruler
set nu
set cindent
set hidden
set hlsearch
set wildmenu " Pretty completion menu
set colorcolumn=80 "cc for short
syntax enable


" Always use 80 character line limits
" Set to 0 to disable
set textwidth=79



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

  " the following line makes vim ignore camelCase and CamelCase words so they
  " are not highlighted as spelling mistakes
  autocmd Syntax * syn match CamelCase "\(\<\|_\)\%(\u\l*\)\{2,}\(\>\|_\)\|\<\%(\l\l*\)\%(\u\l*\)\{1,}\>" transparent containedin=.*Comment.*,.*String.*,VimwikiLink contains=@NoSpell contained

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
  " Disable docstring warning
  " :let g:syntastic_quiet_messages = {"regex":  'docstring'}
  au FileType python set autoindent smartindent et sts=4 sw=4 tw=79 fo=croq
augroup END

augroup go
  filetype off
  filetype plugin indent off
  set runtimepath+=$GOROOT/misc/vim
  filetype plugin indent on
  syntax on
  "set tabstop=4 noexpandtab
  " autocmd FileType go autocmd BufWritePre <buffer> Fmt
augroup END

augroup latex
  set spell
augroup END

augroup ruby
  setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
augroup END

" Ignore Camel Case in Spelling
fun! IgnoreCamelCaseSpell()
  syn match CamelCase /\<[A-Z][a-z]\+[A-Z].\{-}\>/ contains=@NoSpell transparent
  syn cluster Spell add=CamelCase
endfun
autocmd BufRead,BufNewFile * :call IgnoreCamelCaseSpell()

" Syntastic lints to use
let g:syntastic_javascript_checkers=['eslint']
" Have HTML Tidy not complain about  angularjs (ng) elements
" As well as allow more modern html 5
let g:syntastic_html_tidy_ignore_errors = [
    \"trimming empty <i>",
    \"trimming empty <span>",
    \"<input> proprietary attribute \"autocomplete\"",
    \"proprietary attribute \"role\"",
    \"proprietary attribute \"hidden\"",
    \" proprietary attribute \"ng-",
    \]
" Fancy highlighting
let g:syntastic_enable_highlighting=1
let g:syntastic_error_symbol = '✗'                                                                                                               

" This slows down vim opening considerably.
"let g:syntastic_check_on_open = 1

let g:syntastic_lua_checkers = ["luacheck"]
let g:syntastic_lua_luacheck_args = "--no-unused-args" 

" Arduino
" Leader key is \
" \ac compile    \ad deploy   \as screen
"let g:vim_arduino_library_path=/Applications/Arduino.app/Contents/Resources/Java
" let g:vim_arduino_serial_port = /my/serial/port
"Default: result of `$(ls /dev/tty.* | grep usb)`


"haskell plugin wants a browser location
let g:haddock_browser = "/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

" Have Ag highlight search terms
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

" Tabular shortcut for transforming:
" THIS          into        THAT
" int abc;             int      abc
" float *qwert;        float    *qwert;
cab tw Tabularize /\S\+;

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
   let @/ = ''
   if exists('#auto_highlight')
     au! auto_highlight
     augroup! auto_highlight
     setl updatetime=200
     echo 'Highlight current word: off'
     return 0
  else
    augroup auto_highlight
    au!
    au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
  return 1
 endif
endfunction



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


" Fix shift key typos
" source for more: https://github.com/spf13/spf13-vim/blob/3.0/.vimrc
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang Q q<bang>

" ROS Launch files
" autocmd BufRead,BufNewFile *.launch setfiletuype roslaunch
augroup launch
  setfiletype xml
  set nospell
augroup END

" Syntax highlighting for rockspec files.
au BufNewFile,BufRead *.rockspec set filetype=lua
au BufNewFile,BufRead *.cuh set filetype=cuda
au BufNewFile,BufRead *.cfg set filetype=python
au BufNewFile,BufRead *.launch set filetype=xml
au FileType gitcommit set spell


" Salt Stated file
"au BufRead,BufNewFile *.sls set filetype=yaml


" Format Javascript code on save
" au BufWritePost *.js silent !jsfmt --format --write % | edit

" Color scheme
" This incantation is what I need for a dark scheme
" to work on OS X. Color -> Dark -> Color.
colorscheme bubblegum
set background=dark
colorscheme bubblegum

" Common misspelling should go here
" Make sure no space at the end.
" iabbrev seperate  separate
iabbrev thier their

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
