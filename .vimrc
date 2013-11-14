set nu
"set nowrap                  " Don't auto change line
set showmatch	            " Show matching brackets/parenthesis
set incsearch	            " Find as you type search
set hlsearch	            " Hightlight search terms
set ignorecase 	            " Case insensitive search
set smartcase 	            " Case sensitive when uc present
set autoindent 	            " Indent at the same level of the previous line
set shiftwidth=4			" Use indent of 4 spaces
set expandtab				" Tabs are spaces, not tabs
set tabstop=4				" An indentation delete indent
syntax on                   " Highlighting 

vmap y :w !pbcopy<CR><CR>
nmap p :r !pbpaste<CR><CR>

" Vundle Settings {
	
    set nocompatible               " be iMproved
    filetype off                   " required!

    set rtp+=~/.dxhvim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    " required! 
    Bundle 'gmarik/vundle'

    " My Bundles here:
    
    " original repos on github
    Bundle 'tpope/vim-fugitive'
    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
    "Bundle 'tpope/vim-rails.git'
    
    " vim-scripts repos
    Bundle 'L9'
    Bundle 'FuzzyFinder'    
   
    " non github repos
    Bundle 'git://git.wincent.com/command-t.git'
   
    " git repos on your local machine (ie. when working on your own plugin)
    Bundle 'file:///Users/gmarik/path/to/plugin'
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

" } Vundle Settings End!
