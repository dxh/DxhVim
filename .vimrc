" Easy Setting {
    let mapleader = ","
    " Fast reloading of the .vimrc    
    map <silent> <leader>sv :source ~/.vimrc<cr>                
    " Fast editing of .vimrc
    map <silent> <leader>ev :e ~/.vim/.vimrc<cr>                
    map <silent> <leader>ep :e ~/.vim/.myplugins-vimrc<cr>                
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
    if has('mac') || has("macunix")
        set guifont=Monaco:h14
        vmap y :w !pbcopy<CR><CR>
        nmap p :r !pbpaste<CR><CR> 
    endif
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

" Vundle Settings {
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    
    set nocompatible               " be iMproved
    filetype off                   " required!
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    filetype plugin indent on     " required!

    "Add my bundles here
    source ~/.vim/.myplugins-vimrc

    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
        :q!
        :q!
    endif
" } Vundle Settings End!

" Color related settings {
    syntax enable                                               " Highlighting 
    set background=dark
    "colorscheme solarized
    colorscheme desert
" }

" keymap {
    nnoremap ; :
    nnoremap <leader>sn :set nonumber!<CR>
    nnoremap <leader>d :NERDTreeToggle<CR>
    nnoremap <leader>t :TlistToggle<CR>
    
    " SVN Related Key map {
        nnoremap <leader>sup % :!svn update<CR>
        nnoremap <leader>sci % :!svn commit -m '' 
    " }
" }
