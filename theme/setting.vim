""syntax on
"colorscheme one
"let g:one_allow_italics = 1
"set background=dark
"colorscheme dracula
"colorscheme_bg = "dark
"let g:molokai_original = 1
syntax enable
autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'medium'
set cursorline
set number
set noshowmode

let g:lightline = {
            "\   'colorscheme': 'wombat',
            \   'active': {
            \       'left': [
            \           [ 'mode', 'paste' ],
            "\           [ 'readonly', 'filename', 'modified' ],
            \           [ 'buffers' ]
            \       ],
            \       'right': [
            \           [ 'lineinfo' ],
            \           [ 'percent' ],
            \           [ 'conda' ],
            \           [ 'fileformat', 'fileencoding', 'filetype' ]
            \       ]
            \   },
            \   'tabline': {
            \       'left':[['buffers']]
            \   },
            \   'component_function': {
            \       'conda':'CondaEnv'
            \   },
            \   'component_expand': {
            \       'buffers': 'lightline#bufferline#buffers'
            \   },
            \   'component_type': {
            \       'buffers': 'tabsel'
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
