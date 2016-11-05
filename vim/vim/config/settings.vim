"config settings
set autoindent

"disable comp with vi
set nocompatible



"===============================
"        Visual configs        "
"===============================

highlight Search cterm=underline

"set status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"buffer is hinden on iddle
set hidden

"always show status line
set laststatus=2

"highlight matching
set showmatch
set number " line numbers
"dont redraw on maracos
set lazyredraw

"enable mouse
set mouse=a

"allways show current postion
set ruler

"text dont wrap
set wrap

"show cmd
set showcmd

"highlight line with cursor
set cursorline

set showmode

set softtabstop=4

"set number of colors
set t_Co=256

"enable folding
set foldenable

set foldlevelstart=10
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
set guifont=Source\ Code\ Pro:h12

"===============================
"      search configs          "
"===============================
"highlight search results
set hlsearch

"makes search with modern behavious
set incsearch


"============================="
"    MISC                     "
"============================="
"disable backup temp files
set nobackup
set nowb
set noswapfile

"set max history
set history=500

"set backspace to work as it should
set backspace=indent,eol,start
set colorcolumn=120

"text enconding
"set encoding=utf-8

"text formating
set formatoptions=qrn1

set matchtime=3
set modelines=0

"set number of lines above and below the cursor
set scrolloff=3

"site of tab in spaces
set tabstop=4 shiftwidth=4 expandtab

set ttyfast
"ruler at 120 chars
"set tw=120

set undolevels=250
set visualbell

"pate
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

"===================================
"      wildmenu completion          "
"==================================="
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled speolling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=*.orig "Merge resolution files"

"=============================================="
"               GVIM CONFIG                    "
"=============================================="

" Removing scrollbars
if has("gui_running")
    set guitablabel=%-0.12t%M
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions+=a
    set guioptions-=m
    set listchars=tab:?\ ,eol:¬         " Invisibles using the Textmate style
    set background=dark
else
    set background=dark
endif
