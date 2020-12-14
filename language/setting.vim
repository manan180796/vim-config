"let g:coc_global_extensions = ['coc-js:on', 'coc-git']

autocmd CursorMoved * silent call CocActionAsync('highlight')

function! MyCocHighlight() abort
    highlight! link CocHighlightText PMenuSBar
    "highlight CocHighlightText        ctermfg=231 ctermbg=161 guibg=#68615d
    
    highlight CocUnderline cterm=underline gui=underline
    highlight CocItalic term=italic cterm=italic gui=italic
    highlight CocBold term=bold cterm=bold gui=bold
    
    "highlight CocMarkdownLink ctermfg=Blue guifg=#15aabf guibg=NONE
    
    highlight! link CocErrorHighlight CocUnderline
    highlight! link CocMarkdownCode markdownCode
    highlight! link CocMarkdownHeader markdownH1
    highlight! link CocErrorVirtualText  CocErrorSign
    highlight! link CocWarningVirtualText CocWarningSign
    highlight! link CocInfoVirtualText CocInfoSign
    highlight! link CocHintVirtualText CocHintSign
    highlight! link CocWarningHighlight   CocUnderline
    highlight! link CocInfoHighlight   CocUnderline
    highlight! link CocHintHighlight   CocUnderline
    "highlight link CursorColumn
    highlight! link CocHighlightRead  CocHighlightText
    highlight! link CocHighlightWrite  CocHighlightText
endfunction

augroup MyColors
    autocmd!
    autocmd ColorScheme * call MyCocHighlight()
augroup END

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window.
nnoremap <silent> <F7> :call <SID>show_documentation()<CR>
nnoremap <silent> <F2> :CocCommand document.renameCurrentWord<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

source language/python/setting.vim
