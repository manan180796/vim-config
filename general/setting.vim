" Toggle Comment
nmap <silent> <C-_>   <Plug>NERDCommenterToggle
vmap <silent> <C-_>   <Plug>NERDCommenterToggle<CR>gv
imap <silent> <C-_>   <Esc><Plug>NERDCommenterTogglei

" Move line
nnoremap <silent> <C-Up> :m .-2<CR>==
nnoremap <silent> <C-Down> :m .+1<CR>==
inoremap <silent> <C-Up> <Esc>:m .-2<CR>==gi
inoremap <silent> <C-Down> <Esc>:m .+1<CR>==gi
vnoremap <silent> <C-Up> :m '<-2<CR>gv=gv
vnoremap <silent> <C-Down> :m '>+1<CR>gv=gv
vnoremap <silent> <C-Down> :m '>+1<CR>gv=gv

" Copy line down
nnoremap <C-S-D> yyp
inoremap <C-S-D> <Esc>yyp<CR>==gi

"NerdTree
nnoremap <silent> <F6> :NERDTreeToggle<CR>

"Tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>

"Set current directory as working directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif

"Indent guides
let g:indentLine_char = '│'


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=1000

"Tab properties
set tabstop=4
set shiftwidth=4
set expandtab

"Splits
set fillchars+=vert:│

"Beautifier -- currently using coc on save formatting
"nnoremap <silent> <F3> :Autoformat<CR>

"Mouse
set mouse=a

"do not wrap lines
set nowrap

"press return to temporarily get out of the highlighted search. 
nnoremap <CR> :nohlsearch<CR><CR>

"To use `ALT+{h,j,k,l}` to navigate windows from any mode:
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


tnoremap <A-Up> <C-\><C-N><C-w><Up>
inoremap <A-Up> <C-\><C-N><C-w><Up>
nnoremap <A-Up> <C-w><Up>
tnoremap <A-Down> <C-\><C-N><C-w><Down>
inoremap <A-Down> <C-\><C-N><C-w><Down>
nnoremap <A-Down> <C-w><Down>
tnoremap <A-Left> <C-\><C-N><C-w><Left>
inoremap <A-Left> <C-\><C-N><C-w><Left>
nnoremap <A-Left> <C-w><Left>
tnoremap <A-Right> <C-\><C-N><C-w><Right>
inoremap <A-Right> <C-\><C-N><C-w><Right>
nnoremap <A-Right> <C-w><Right>

