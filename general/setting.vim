" Toggle Comment
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
imap <C-_>   <Esc><Plug>NERDCommenterTogglei

" Move line
nnoremap <C-Up> :m .-2<CR>==
nnoremap <C-Down> :m .+1<CR>==
inoremap <C-Up> <Esc>:m .-2<CR>==gi
inoremap <C-Down> <Esc>:m .+1<CR>==gi
vnoremap <C-Up> :m '<-2<CR>gv=gv
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Down> :m '>+1<CR>gv=gv

" Copy line down
nnoremap <C-S-D> yyp
inoremap <C-S-D> <Esc>yyp<CR>==gi

"NerdTree
nnoremap <C-e> :NERDTreeToggle<CR>

"Tagbar
nnoremap <C-r> :TagbarToggle<CR>

"Set current directory as working directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif

"Indent guides
let g:indentLine_char = '│'

"Tab properties
set tabstop=4
set shiftwidth=4
set expandtab

"Splits
set fillchars+=vert:│

"Beautifier
nnoremap <F3> :Autoformat<CR>

"Mouse
set mouse=a

"do not wrap lines
set nowrap
