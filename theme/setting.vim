""syntax on
"colorscheme one
"let g:one_allow_italics = 1
"set background=dark
"colorscheme dracula
"colorscheme_bg = "dark
"let g:molokai_original = 1
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
set cursorline
set number
set noshowmode
set termguicolors
syntax enable

let g:lightline = {
            "\   'colorscheme': 'wombat',
            \   'active': {
            \       'right': [
            \           [ 'lineinfo' ],
            \           [ 'percent' ],
            \           [ 'conda' ],
            \           [ 'fileformat', 'fileencoding', 'filetype' ]
            \       ]
            \   },
            \   'component_function': {
            \       'conda':'CondaEnv'
            \   }
            \ }

function! CondaEnv()
    let env='conda:'
    let env.=$CONDA_DEFAULT_ENV
    return &filetype==# 'python' ? env : ''
    "return &filetype==# 'python' ? 'hello' : ''
endfunction

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set cul
    autocmd WinLeave * set nocul
augroup END

set laststatus=2
