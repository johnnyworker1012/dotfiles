set nocompatible
filetype off
filetype plugin indent on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'https://github.com/kien/ctrlp.vim.git'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'rking/ag.vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'jgdavey/tslime.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'https://github.com/Valloric/YouCompleteMe.git'

if $TMUX == ''
  set clipboard+=unnamed
endif

set modifiable
set buftype=""
set tabstop=2
set shiftwidth=2
set expandtab
set number
syntax on
filetype plugin indent on
set backspace=indent,eol,start

execute pathogen#infect()
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

set tags=tags
set runtimepath^=~/.vim/bundle/ctrlp.vim

set mouse=nicr
set mouse+=a

:set list
:set listchars=tab:--,trail:-
hi SpecialKey ctermfg=77 guifg=#696969

let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
