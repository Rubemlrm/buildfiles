"=============================================="
" PLUGIN STUFF
"=============================================="
" Usual quickstart instructions
"set rtp+=~/.vim/bundle/vundle/

"call vundle#begin()
Plug 'Shougo/unite.vim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
Plug 'joonty/vim-sauce.git'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-polyglot'
Plug 'vim-scripts/grep.vim'
Plug 'mhinz/vim-startify'
"language stuff
Plug 'vim-scripts/tagbar'
Plug 'garbas/vim-snipmate'
"libs
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Shougo/vimproc.vim'
Plug 'xolox/vim-misc'
Plug 'tomtom/tlib_vim'

"Optional
Plug 'honza/vim-snippets'
Plug 'trusktr/seti.vim'
call plug#end()

"===================================
" END PLUGIN
"===================================

"==================================="
"  PLUGIN SETTINGS		    "
"==================================="

"===============================================================================
" Unite
"===============================================================================

" Set up some custom ignores
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'git5/.*/review/',
      \ 'google/obj/',
      \ 'tmp/',
      \ 'vendor/',
      \ '.sass-cache',
      \ 'node_modules/',
      \ 'bower_components/',
      \ 'dist/',
      \ '.git5_specs/',
      \ '.pyc',
      \ ], '\|'))

"recent edited files
nnoremap <silent> <Leader>m :Unite -buffer-name=recent -winheight=10 file_mru<cr>

"recent buffers
nnoremap <Leader>b :Unite -buffer-name=buffers -winheight=10 buffer<cr>

nnoremap <Leader>f :Unite grep:.<cr>

" CtrlP search
nnoremap <C-p> :Unite file_rec/async:!<cr>
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec/async','sorters','sorter_rank')

" Start in insert mode
let g:unite_enable_start_insert = 1

let g:unite_data_directory = "~/.unite"

" Open in bottom right
let g:unite_split_rule = "botright"

" Shorten the default update date of 500ms
let g:unite_update_time = 200

let g:unite_source_file_mru_limit = 1000
let g:unite_cursor_line_highlight = 'TabLineSel'

let g:unite_source_file_mru_filename_format = ':~:.'
let g:unite_source_file_mru_time_format = ''

" For ack.
nnoremap <space>/ :Unite grep:.<cr>

if executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '-i --no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack')
  let g:unite_source_grep_command = 'ack'
  let g:unite_source_grep_default_opts = '-i --no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
endif

let g:unite_source_rec_max_cache_files = 99999


" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

"=========================================================
"        NerdTree
"=======
"autocmd vimenter * NERDTree
"inmap <C-b> :NERDTreeToggle<cr>

"Nerdtree
"autocmd vimenter * if !argc() | NERDTree | endif
"" Mirror tree position for every buffer
"autocmd BufEnter * NERDTreeMirror
" Set current dir to vim cwd
"set autochdir
"let NERDTreeChDirMode=2
" map <Leader>n <plug>NERDTreeTabsToggle<CR>
" "map <silent> <C-s> :NERDTree<CR><C-w>p:NERDTreeFind<CR>

"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'

"================================================
"               TAGBAR
"================================================
nmap <F8> :TagbarToggle<CR>

"===========================================
"          Fugitive
"===========================================
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gr :Gremove<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gm :Gmove
nnoremap <Leader>gp :Ggrep
nnoremap <Leader>gR :Gread<CR>
nnoremap <Leader>gg :Git
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gv :Gpull origin
nnoremap <Leader>gx :Gcommit -m ""
nnoremap <Leader>gc :Gpush origin

"===============================================
"			SYNTASTIC
"===============================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_mode_map = {
  \ 'mode': 'active',
  \ "active_filetypes": ["ruby", "php","css", "coffee", "sass", "js"],
  \ "passive_filetypes": ["puppet"],
  \}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_save = 1
let g:syntastic_check_on_wq = 0

" agregatte multiple linter erros
let g:syntastic_aggregate_errors = 1
let g:syntastic_php_checkers = ["php","phpcs","phpmd"]
let g:syntastic_php_phpcs_args="--standard=psr2"
let g:syntastic_php_phpmd_post_args="cleancode,codesize,controversial,design,naming,unusedcode"

"icons 
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = 'se'
let g:syntastic_warning_symbol = 'w'
let g:syntastic_style_warning_symbol = 'sw'


"				AIRLINE
"============================================
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

"=============================================
"              GIT GUTTER
"=============================================
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk

"================================================
"               EMMET
"================================================
let g:user_emmet_install_global = 1
let g:user_emmet_leader_key='<C-Z>'

"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"================================================="
" vim commentary
"
"gc{motion} Comment or uncomment lines that {motion} moves over
"gcc Comment or uncomment [count] lines.
"{Visual}gc              Comment or uncomment the highlighted lines.
"gc                      Text object for a comment (operator pending mode only.)
"gcgc                    Uncomment the current and adjacent commented lines.
"gcu  *:Commentary* :[range]Commentary      Comment or uncomment [range] lines

"============================================
"				GREP
"===========================================
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

"==================================
" END SETTINGS PLUGIN
"==================================
