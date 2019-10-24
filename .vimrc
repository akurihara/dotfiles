"   Enable Vundle
"   ----------------------------------------------------------
    set nocompatible                                    " required for vundle
    filetype off                                        " required for vundle
    set rtp+=~/.vim/bundle/Vundle.vim                   " set the runtime path to include Vundle and initialize
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/syntastic'
    Plugin 'kien/ctrlp.vim'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'rking/ag.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'tpope/vim-fugitive'
    Plugin 'fatih/vim-go'
    Plugin 'craigemery/vim-autotag'

    call vundle#end()                                   " required
    filetype plugin indent on                           " required

"   Set Tomorrow Night Color Scheme
"   ----------------------------------------------------------
    syntax enable
    set background=dark
    colorscheme tomorrow_night

"   Customize Invisible Characters
"   ----------------------------------------------------------
    set listchars=tab:▸\ ,eol:¬

"   Fix Backspace 
"   ----------------------------------------------------------
    set backspace=indent,eol,start

"   Line Length Markers
"   ----------------------------------------------------------
    let &colorcolumn="100,".join(range(120,999),",")

"   Tabs and Indents
"   ----------------------------------------------------------
    set tabstop=2
    set shiftwidth=2
    set expandtab

    set clipboard=unnamed                               " yank and paste with the system clipboard
    set splitbelow
    set splitright                                      " more natural split opening
    set autoread                                        " reload files when changed on disk
    set laststatus=2
    set number
    set ruler
    set cursorline                                      " highlight current line
    set hlsearch                                        " highlight search pattern 

    if has("autocmd")
      " Enable file type detection
      filetype on

      " Syntax of these languages is fussy over tabs Vs spaces
      autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
      autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

      " Customizations based on house-style
      autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
      autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
      autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
      autocmd FileType go setlocal ts=4 sts=4 sw=4 noexpandtab
    endif

"   Keyboard Shortcuts
"   ----------------------------------------------------------
    let mapleader = ','
    nnoremap <C-J> <C-W><C-J>                                " easier split navigations.
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <leader>t :CtrlP<CR>
    nnoremap <leader>d :NERDTreeToggle<CR>
    nnoremap <leader>f :NERDTreeFind<CR>
    nnoremap <leader>w :w<CR>
    nnoremap <leader>q :q<CR>
    nnoremap <leader>q! :q!<CR>
    nnoremap <leader>e :e<CR>
    nnoremap <leader>e! :e!<CR>
    nnoremap <Bslash> :Ag 
    nnoremap <leader>m :%!python -m json.tool<CR>
    nnoremap <leader>g :exec("tag ".expand("<cword>"))<CR>   " jump to definition.
    nnoremap <leader>G :execute 'tj' expand('<cword>')<CR>zv
    nnoremap <C-w>E :SyntasticCheck<CR>                      " manually perform Syntastic check.

"   Syntastic
"   ----------------------------------------------------------
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_javascript_checkers = ['eslint']
    let g:syntastic_python_checkers = ['flake8']
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_html_tidy_quiet_messages = { "level" : "warnings" }

"   NERDTree
"   ----------------------------------------------------------
    let NERDTreeIgnore = ['\.pyc$', '\.swp$', '__pycache__', '\.git', '\.mypy_cache', '.python-version', '*.db']
    let NERDTreeShowHidden=1

"   Powerline
"   ----------------------------------------------------------
    let g:airline_powerline_fonts = 1

"   Mouse
"   ----------------------------------------------------------
    set mouse=a

"   Ctrl P
"   ----------------------------------------------------------
    let g:ctrlp_custom_ignore = {
     \ 'dir':  '\.git$\|\.node_modules$',
     \ 'file': '\.pyc$\$'
     \ }

"   Ctags
"   ----------------------------------------------------------
    set tags+=tags;$HOME                                " Ctags searches for tag file up to home directory.
