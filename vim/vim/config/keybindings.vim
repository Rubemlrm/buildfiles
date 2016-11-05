"============================================
"               KeyBinding
"============================================
"Rebing <leader>key
let mapleader = ","

"I can type :help on my own, thanks.
noremap <F1> <Esc>

"map esc to jk
inoremap <S-CR> <Esc>

"change saving shortcut
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

"change quit shortcut::w
noremap <Leader>q :quit<CR> "Quit current window
noremap <leader><F4> :qa!<CR> "quit all windows


"past mode
set pastetoggle=<F2>

"bind ctrl movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"map sort function to a key
noremap <Leader>s :sort<CR>

" ,ev Shortcut to edit .vimrc file on the fly on a vertical window.
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>


"<Ctrl-X> -- cut (goto visual mode and cut)
imap <C-X> <C-O>vgG
vmap <C-X> "*x<Esc>im

"<Ctrl-C> -- copy (goto visual mode and copy)
imap <C-C> <C-O>vgG
vmap <C-C> "*y<Esc>i

"<Ctrl-A> -- copy all
imap <C-A> <C-O>gg<C-O>gH<C-O>G<Esc>
vmap <C-A> <Esc>gggH<C-O>G<Esc>i

"<Ctrl-V> -- paste
nm \\paste\\ "=@*.'xy'<CR>gPFx"_2x:echo<CR>
imap <C-V> x<Esc>\\paste\\"_s
vmap <C-V> "-cx<Esc>\\paste\\"_x"""""""""""


"======================================="
"          SPLITS                       "
"======================================"

"Resize vsplit
nmap <C-y> :vertical resize +5<cr>
"nmap <C-h> :horizontal resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

"fullscreen
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" Working with split screen nicely
" Resize Split When the window is resized"
au VimResized * :wincmd =
au VimResized * exe "normal! \<c-w>="

" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Create split below
nmap :sp :rightbelow sp<cr>

"====================================="
"           BUFFER                    "
"====================================="

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>

"switch to last file in buffer
nmap <leader><leader> :b#<cr>


"===================================="
"            VISUAL                  "
"===================================="

"toogle menus
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" space open/closes folds
nnoremap <leader> za

" Create/edit file in the current directory
nmap :ed :edit %:p:h/
