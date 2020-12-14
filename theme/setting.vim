let g:lightline = {
            \   'colorscheme': 'gruvbox',
            \   'active': {
            \       'right': [[ 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok'],['lineinfo' ],[ 'percent' ],[ 'conda' ],[ 'fileformat', 'fileencoding', 'filetype' ]],
            \   },
            \   'component_function': {
            \       'conda':'CondaEnv',
            \   },
            \ }
let g:lightline.colorscheme='gruvbox'
let g:lightline.active.right = [['coc_errors','lineinfo'],['percent'],['conda'],['fileformat','fileencoding']]
call lightline#coc#register()
call lightline#disable()
autocmd vimenter * ++nested call lightline#disable() | colorscheme gruvbox | call lightline#enable()
"colorscheme gruvbox
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
set cursorline
set number
set noshowmode
set termguicolors
syntax enable
set laststatus=2
if has("patch-8.1.1564")
    " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
else
    set signcolumn=yes
endif

function! CondaEnv()
    let env='conda:'
    let env.=$CONDA_DEFAULT_ENV
    return &filetype==# 'python' ? env : ''
    "return &filetype==# 'python' ? 'hello' : ''
endfunction

