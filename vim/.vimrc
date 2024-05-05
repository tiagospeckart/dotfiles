" vimrc file for Wesley Schwengle
let hostname = hostname()

"autocmd BufRead **/.git/COMMIT_EDITMSG +norm$

if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  " Uncomment to have 'bomb' on by default for new files.
  " Note, this will not apply to the first, empty buffer created at Vim startup.
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

source $HOME/.vim/vimrc.filebrowsing
source $HOME/.vim/vimrc.filetypes
source $HOME/.vim/vimrc.functions
source $HOME/.vim/vimrc.fuzzyfind
source $HOME/.vim/vimrc.macros
source $HOME/.vim/vimrc.mappings
source $HOME/.vim/vimrc.plugins
source $HOME/.vim/vimrc.templates
source $HOME/.vim/vimrc.ale
"source $HOME/.vim/vimrc.vim_as_perl_ide

set ai
set autoread
set backspace=indent,eol,start
set expandtab
set hidden
set history=1000
set ignorecase
set incsearch
set laststatus=2 " always show the statusline
set linebreak
set listchars=tab:▸\ ,trail:¬,extends:>,precedes:<,nbsp:␣
" listchars for EOL and space make reading your code really hard:
" eol:$,space:·,nbsp:␣
set list
set modeline " # vim: filetype=zsh syntax=zsh etc
set nocompatible
set noswapfile
set number
set showcmd
set showmatch
set sm
set smartcase
set smarttab
set sw=4
set tabstop=4
set title
set tw=72
set wrap
set noinsertmode
set autowrite " Save buffer when changing files
set autoread  " Reload buffer when changing files

" Show marker around 80 chars
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(400,999),",")

set foldmethod=indent
set foldlevel=0
set foldlevelstart=0
highlight Folded  ctermfg=cyan ctermbg=black

let python_highlight_all=1

" vim-latex:
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor='latex'

" Load different themes on GUI/Term based shizzle
if has('gui_running')
    set guioptions-=T  " no toolbar
    set guifont=Ubuntu\ Mono\ 18
else
    set t_Co=256
endif

" background needs to be set after the colorscheme is set
" For shiney themes see: http://vimcolors.com/
colorscheme monokai-phoenix
colorscheme iceberg

" Toggle background so everything looks pretty
set background=light
set background=dark

" https://github.com/kovidgoyal/kitty/issues/108#issuecomment-320492663
"
" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''
