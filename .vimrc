"Using VIM on Debian/Ubuntu distros
    runtime! debian.vim

" Source a global configuration file if available
"    if filereadable("/etc/vim/vimrc.local")
"      source /etc/vim/vimrc.local
"    endif

"Swap, Backup and History files config
"SWAP FILES (.swp) in a common location
    set dir =~/.vim/_swap//

"backup files (~) in a common location if possible
    set backup
    set backupdir=~/.vim/_backup/,~/tmp,.

"turn on undo files, put them in a common location
    set undofile
    set undodir=~/.vim/_undo/

"Tab stuff
    set expandtab
    set tabstop=2
    set shiftwidth=4

" Remap <ESC> to jj
    imap jj <Esc> 

" Map NERDTreeToggle
    map <C-n> :NERDTreeToggle<CR>

"Show line numbers
    set number
    set relativenumber

"Set wrap
    set wrap

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
    "set showcmd		" Show (partial) command in status line.
    set showmatch		" Show matching brackets.
    set ignorecase		" Do case insensitive matching
    "set smartcase		" Do smart case matching
    "set incsearch		" Incremental search
    "set autowrite		" Automatically save before commands like :next and :make
    set hidden		" Hide buffers when they are abandoned
    "set mouse=a		" Enable mouse usage (all modes)

"Highlight currentline
"Warning: It might slow old computers
    set cursorline

"SLOW VIM?
    set ttyfast
    "set cul!
    "set lazyredraw
   
"Setting fullcolor term
    "if (has("termguicolors"))
    "    set termguicolors
    "endif

" toggle cursor line (\ + i)
    nnoremap <leader>i :set cursorline!<cr>

" Source a global configuration file if available
    if filereadable("/etc/vim/vimrc.local")
      source /etc/vim/vimrc.local
    endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
    if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    endif

"+++++++++++++++++++++++++++++++
"Vundle Config
    set nocompatible              " be iMproved, required
    filetype off                  " required

" set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
" Installing Vundle primary plugin
     Plugin 'VundleVim/Vundle.vim'
 
" " Installing VIM themes
    "Plugin 'tomasr/molokai'
    "Plugin 'danilo-augusto/vim-afterglow'
     Plugin 'morhetz/gruvbox'
    "Plugin 'cocopon/iceberg'
    "Plugin 'nanotech/jellybeans'
    "Plugin 'NLKNguyen/papercolor-theme'
    "Plugin 'joshdick/onedark'
    "Plugin 'dikiaap/minimalist'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'tpope/vim-endwise'
    Plugin 'tpope/vim-rails'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'tpope/vim-bundler'
    Plugin 'scrooloose/nerdtree'
    Plugin 'tpope/vim-surround'
    Plugin 'kchmck/vim-coffee-script'
    Plugin 'gregsexton/MatchTag'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'godlygeek/tabular'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-commentary'

" " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
"++++++++++++++++++++++++++++++++

" Uncommenting the next line enables syntax highlighting by default.
    syntax on

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
    if has("autocmd")
      filetype plugin indent on
      autocmd bufwritepost .vimrc source $MYVIMRC
    endif

" Airline Configuration
" MOLOKAI
    "let g:airline_theme='molokai'
"AFTERGLOW
    "let g:airline_theme='afterglow'
    "let g:afterglow_blackout=0
    "let g:afterglow_italic_comments=1
"GRUVBOX
    let g:gruvbox_bold=1
    let g:gruvbox_italic=1
    let g:gruvbox_underline=1
    let g:gruvbox_contrast_dark='medium'
    "let g:gruvbox_hls_cursor=orange
"ONEDAR
    "let g:airline_theme='onedark'
    "let g:onedark_terminal_italics = 1
"MINIMALIST
    "let g:airline_theme = 'minimalist'

"Set airline bar to always show
    set laststatus=2
"Enable the list of buffers
    let g:airline#extensions#tabline#enabled = 1
"Show just the filename
    let g:airline#extensions#tabline#fnamemod = ':t'
"Show powerline fonts
    let g:airline_powerline_fonts = 1

"VIM Theme Activation
"MOLOKAI Theme
    "colorscheme molokai
"AFTERGLOW colorscheme
    "colorscheme afterglow
"GRUVBOX colorscheme
    colorscheme gruvbox
    set background=dark
"ICEBERG colorscheme
    "colorscheme iceberg
"JELLYBEANS colorscheme
    "colorscheme jellybeans
"PAPERCOLOR colorscheme
    "colorscheme PaperColor
    "set background=dark
"ONEDARK colorscheme
    "colorscheme onedark
"MINIMALIST colorscheme
    "colorscheme minimalist
 
" VIM MARKDOWN CONFIG
let g:vim_markdown_new_list_item_indent = 2
