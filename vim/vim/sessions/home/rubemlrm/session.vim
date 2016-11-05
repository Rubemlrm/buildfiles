let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <S-CR> 
vmap  gggHGi
vmap  "*yi
map  h
map <NL> j
map  k
map  l
nnoremap  :Unite file_rec/async:!
nmap  :w
vmap  "-cx\\paste\\"_x"""""""""""
vmap  "*xim
nmap  :vertical resize +5
nnoremap  / :Unite grep:.
nmap ,hv <Plug>GitGutterPreviewHunk
nmap ,hu <Plug>GitGutterRevertHunk
nmap ,ha <Plug>GitGutterStageHunk
nnoremap ,gc :Gpush origin
nnoremap ,gx :Gcommit -m ""
nnoremap ,gv :Gpull origin
nnoremap ,gd :Gdiff
nnoremap ,gg :Git
nnoremap ,gR :Gread
nnoremap ,gp :Ggrep
nnoremap ,gm :Gmove
nnoremap ,gb :Gblame
nnoremap ,gl :Glog
nnoremap ,gr :Gremove
nnoremap ,gs :Gstatus
nnoremap <silent> ,f :Rgrep
nnoremap ,b :Unite -buffer-name=buffers -winheight=10 buffer
nnoremap <silent> ,m :Unite -buffer-name=recent -winheight=10 file_mru
nnoremap , za
nmap ,, :b#
nnoremap ,ev :e $MYVIMRC
noremap ,s :sort
noremap ,<F4> :qa! "quit all windows
noremap ,q :quit "Quit current window
nmap 25 :vertical resize 40
nmap 50 =
nmap 75 :vertical resize 120
nmap :ed :edit %:p:h/
nmap :bn :BufSurfForward
nmap :bp :BufSurfBack
nmap :sp :rightbelow sp
nmap \\paste\\ "=@*.'xy'gPFx"_2x:echo
nmap gx <Plug>NetrwBrowseX
nmap sp :split
nmap vs :vsplit
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nmap <F8> :TagbarToggle
nnoremap <C-F3> :if &go=~#'r'|set go-=r|else|set go+=r|endif
nnoremap <C-F2> :if &go=~#'T'|set go-=T|else|set go+=T|endif
nnoremap <C-F1> :if &go=~#'m'|set go-=m|else|set go+=m|endif
map <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
noremap <F1> 
nnoremap <F2> :set invpaste paste?
imap  gggHG
imap  vgG
imap  :wa
imap  x\\paste\\"_s
imap  vgG
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set foldlevelstart=10
set formatoptions=qrn1
set guifont=Source\ Code\ Pro:h12
set helplang=en
set hidden
set history=500
set hlsearch
set incsearch
set laststatus=2
set lazyredraw
set matchtime=3
set modelines=0
set mouse=a
set pastetoggle=<F2>
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/plugged/unite.vim/,~/.vim/plugged/nerdtree/,~/.vim/plugged/vim-gitgutter/,~/.vim/plugged/vim-airline/,~/.vim/plugged/vim-easymotion/,~/.vim/plugged/supertab/,~/.vim/plugged/vim-sauce/,~/.vim/plugged/emmet-vim/,~/.vim/plugged/syntastic/,~/.vim/plugged/vim-commentary/,~/.vim/plugged/vim-fugitive/,~/.vim/plugged/vim-polyglot/,~/.vim/plugged/grep.vim/,~/.vim/plugged/vim-startify/,~/.vim/plugged/tagbar/,~/.vim/plugged/vim-snipmate/,~/.vim/plugged/vim-addon-mw-utils/,~/.vim/plugged/vimproc.vim/,~/.vim/plugged/vim-misc/,~/.vim/plugged/tlib_vim/,~/.vim/plugged/vim-snippets/,~/.vim/plugged/seti.vim/,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=3
set shiftwidth=4
set showcmd
set showmatch
set softtabstop=4
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabstop=4
set undolevels=250
set visualbell
set wildignore=.hg,.git,.svn,*.aux,*.out,*.toc,*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.o,*.obj,*.exe,*.dll,*.manifest,*.spl,*.sw?,*.DS_Store,*.luac,migrations,*.orig
set wildmenu
set wildmode=list:longest
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
silent! argdel *
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=120
setlocal colorcolumn=120
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=10
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=qrn1
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
lcd ~/
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
