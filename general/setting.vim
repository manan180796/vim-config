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
