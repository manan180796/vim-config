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
