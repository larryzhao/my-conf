set nocompatible               " be iMproved
filetype on                   " required!
syntax on                      " enable syntax
filetype plugin on      " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" original repos on github
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'larryzhao/my-vim-colors'
Bundle 'mileszs/ack.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-surround'
Bundle 'tomtom/tcomment_vim'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'AKurilin/matchit.vim'
Bundle 'bling/vim-airline'
Bundle 'groenewege/vim-less'
Bundle 'nono/vim-handlebars'
"
" vim-scripts repos
"Bundle 'L9'
Bundle 'ruby.vim'
Bundle "jQuery"
Bundle "Markdown"
"Bundle 'FuzzyFinder'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


" my configs
colorscheme Tomorrow-Night      " set color theme

let NERDTreeShowHidden=1 " let Nerdtree show hidden files

if has("gui_macvim")
  set guifont=Anonymous\ Pro:h16
  set guioptions-=L               " Disable Scrollbar in NERDtree with MacVim
  set linespace=2                 " set the line height
endif

set nowrap                      " disable linkbreaks
set clipboard-=unnamed          " seperate yanks and clipboard
set autoread                    " Automatically reread changed files without asking me anything
set autowrite                   " Writes on make/shell commands
set timeoutlen=250              " Time to wait after ESC (default causes an annoying delay) 
set noerrorbells                " No beeps
set noswapfile                  " Don't use swapfile
set nobackup            		    " Don't create annoying backup files
set encoding=utf-8              " Set default encoding to UTF-8

" set tabs & indent
set tabstop=2
set expandtab                   " Make tabs into spaces (set by tabstop)
set shiftwidth=2                " Set the default shift width for indents
set smarttab

" enable auto-indent
set smartindent
set autoindent
filetype indent on

set backspace=indent,eol,start  " Makes backspace key more powerful.
set showmode                    " Show current mode.
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set hlsearch                    " Highlight found searches


" set delimiter style
" set list listchars=tab:»·,trail:·
" set list listchars=tab:·,trail:·

"set number                     " Show line numbers
"set showcmd                    " Show me what I'm typing
"set autowrite                  " Automatically save before :next, :make etc.
"set laststatus=2               "always show the status line (0 = never, 1 = (default) only if there are two or more windows, 2 = always)
"set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
"set showmatch                   " Do not show matching brackets by flickering
"set incsearch                   " Shows the match while typing
"set ignorecase                  " Search case insensitive...
"set smartcase                   " ... but not when search pattern contains upper case characters
"set switchbuf=usetab,newtab     " open new buffers always in new tabs
"
"

"Set filetypes
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru,Guardfile,*.god}     set ft=ruby
au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                                         set ft=markdown
au BufNewFile,BufRead {*.coffee,*.coffee.erb}                                         set filetype=coffee
au BufNewFile,BufRead {*.eco,*.eco.erb}                                               set filetype=mason
au BufNewFile,BufRead {*.less,*.less.erb}                                             set filetype=less
au BufNewFile,BufRead *.js.erb                                                        set filetype=javascript
au BufNewFile,BufRead {*.handlebars,*.hbs}                                            set filetype=handlebars


" NERDTree Settings
let NERDTreeIgnore=['\.DS_Store$']    " Hide unuseful files
