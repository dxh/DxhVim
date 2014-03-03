" Easy Setting {
    let mapleader = ","
    " Fast reloading of the .vimrc    
    map <silent> <leader>sv :source ~/.vimrc<cr>                
    " Fast editing of .vimrc
    map <silent> <leader>ev :e ~/.vim/.vimrc<cr>                
    " When .vimrc is edited, reload it 
    autocmd! bufwritepost .vimrc source ~/.vimrc                
" }

" General Settings {
    set nonu
    set nobackup
    set nowrap                                                  " Don't auto change line
    set showcmd                                                 " Show current cmd in status bar
    set ruler                                                   " Show number of rows and columns in status bar
    set mouse=a
    set clipboard=unnamed
    "if has('mac') || has("macunix")
        "vmap y :w !pbcopy<CR><CR>
        "nmap p :r !pbpaste<CR><CR> 
    "endif
    set backspace=indent,eol,start
" }

" Chinese related settings {
    let $LANG="zh_CN.UTF-8"
    set fileencoding=utf-8                                      " Save file as utf8
    set fileencodings=ucs-bom,utf-8,chinese,default,latin-1     " Try open file with these encodings
    set termencoding=utf-8
    set encoding=utf-8
    set formatoptions+=m                                        " 如遇Unicode值大于255的文本，不必等到空格再折行
    set formatoptions+=B                                        " 合并两行中文时，不在中间加空格
" }

" Search related settings {
    set showmatch                                               " Show matching brackets/parenthesis
    set incsearch                                               " Find as you type search
    set hlsearch                                                " Hightlight search terms
    set ignorecase                                              " Case insensitive search
    set smartcase                                               " Case sensitive when uc present
" }

" Indent related settings {
    set autoindent                                              " Indent at the same level of the previous line
    set shiftwidth=4                                            " Use indent of 4 spaces
    set tabstop=4                                               " An indentation delete indent
    set expandtab                                               " Tabs are spaces, not tabs
    filetype indent plugin on                                   " Autoindent based on filetype
" }


" Color related settings {
    syntax on                                                   " Highlighting 
    "colorscheme solarized
    set background=dark
" }

" Custom key map {
    nnoremap ; :
    nnoremap <F2> :set nonumber!<CR>
    nnoremap <F3> :NERDTreeToggle<CR>
    nnoremap <F4> :TlistToggle<CR>
" }


" Vundle Settings {
    
    set nocompatible               " be iMproved
    filetype off                   " required!

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    " required! 
    Bundle 'gmarik/vundle'

    " 4 ways to install plugins {
    
        " 1. original repos on github
        " Bundle 'tpope/vim-fugitive'
        " Bundle 'Lokaltog/vim-easymotion'
        " Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

        " 2. vim-scripts repos
        " Bundle 'L9'
        " Bundle 'FuzzyFinder'    
        
        " 3. non github repos
        " Bundle 'git://git.wincent.com/command-t.git'
        
        " 4. git repos on your local machine (ie. when working on your own plugin)
        "Bundle 'file:///Users/gmarik/path/to/plugin'
    " }
    filetype plugin indent on     " required!
    
    " Brief help
    " :BundleList          - list configured bundles
    " :BundleInstall(!)    - install(update) bundles
    " :BundleSearch(!) foo - search(or refresh cache first) for foo
    " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
    "
    " see :h vundle for more details or wiki for FAQ
    " NOTE: comments after Bundle command are not allowed..
    
    " My Plugins 

    " The-NERD-tree {
        Bundle 'vim-scripts/The-NERD-tree'   
        " Key Map
        " F3 Toogle the-nerd-tree
        " o Open 
        " go Open and stay
        " x Unfold
        " X Unfold All
        " :h NerdTreeMapping See more key mapping
    " }
   
    " taglist {
        Bundle 'vim-scripts/taglist.vim'
        " Key Map
        " F4 Toogle taglist
    " }
   
    " ctrlp { 快速打开文件
        Bundle 'kien/ctrlp.vim'
    " }
   
    " neocomplcache { 代码补全
         "Bundle 'Valloric/YouCompleteMe'
        "功能强大，但是每个平台需要单独编译,安装方法请参考该插件Github上的说明
    " }
    " emmet { 前端开发利器
        Bundle "mattn/emmet-vim"
        " Key Map
        " <c-y>/ Toogle 注释
    " }
    " vim-multiple-cursors { 多光标操作，可同时编辑多个地方
        Bundle 'terryma/vim-multiple-cursors'
    " }
    
    " nerdcommenter {
        Bundle 'scrooloose/nerdcommenter'
        " Key Map
        " <leader>ci comment and uncomment
    " }

    Bundle 'bling/vim-airline'
    "Bundle 'altercation/vim-colors-solarized'
    Bundle 'Yggdroot/indentLine'                      
    
    " vim-markdown {
        Bundle 'plasticboy/vim-markdown'
        " Key Map
        " ]]: go to next header
        " ]]: go to next header.
        " [[: go to previous header. Contrast with ]c.
        " ][: go to next sibling header if any.
        " []: go to previous sibling header if any.
        " ]c: go to Current header.
        " ]u: go to parent header (Up)
    " }
" } Vundle Settings End!
