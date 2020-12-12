autocmd CursorHold * silent call CocActionAsync('highlight')

"CocUnderline						*CocUnderline*
"The highlight for undefined text.
hi default CocUnderline cterm=underline gui=underline


"CocBold							*CocBold*
"The highlight for bold text.
hi default CocBold term=bold cterm=bold gui=bold


"CocItalic						*CocItalic*
"The highlight for italic text.
hi default CocItalic term=italic cterm=italic gui=italic


"CocMarkdownCode						*CocMarkdownCode*
"The highlight for markdown code in floating window/popup.
hi default link CocMarkdownCode     markdownCode


"CocMarkdownHeader					*CocMarkdownHeader*
"The highlight for markdown header in floating window/popup.
hi default link CocMarkdownHeader   markdownH1


"CocMarkdownLink						*CocMarkdownLink*
"The highlight for markdown link text in floating window/popup.
hi default CocMarkdownLink ctermfg=Blue guifg=#15aabf guibg=NONE


"CocErrorSign						*CocErrorSign*
"The highlight used for error signs.
hi CocErrorSign  ctermfg=Red guifg=#ff0000


"CocWarningSign						*CocWarningSign*
"The highlight used for warning signs.
hi CocWarningSign  ctermfg=Brown guifg=#ff922b


"CocInfoSign						*CocInfoSign*
"The highlight used for information signs.
hi CocInfoSign  ctermfg=Yellow guifg=#fab005


"CocHintSign						*CocHintSign*
"The highlight used for hint signs.
hi CocHintSign  ctermfg=Blue guifg=#15aabf


"CocErrorVirtualText					*CocErrorVirtualText*
"The highlight used for error signs.
hi default link CocErrorVirtualText  CocErrorSign


"CocWarningVirtualText					*CocWarningVirtualText*
"The highlight used for warning signs.
hi default link CocWarningVirtualText CocWarningSign


"CocInfoVirtualText					*CocInfoVirtualText*
"The highlight used for information signs.
hi default link CocInfoVirtualText CocInfoSign


"CocHintVirtualText					*CocHintVirtualText*
"The highlight used for hint signs.
hi default link CocHintVirtualText CocHintSign


"CocErrorHighlight					*CocErrorHighlight*
"The highlight used for error text.
hi default link CocErrorHighlight   CocUnderline


"CocWarningHighlight					*CocWarningHighlight*
"The highlight used for warning text.
hi default link CocWarningHighlight   CocUnderline


"CocInfoHighlight					*CocInfoHighlight*
"The highlight used for information text.
hi default link CocInfoHighlight   CocUnderline


"CocHintHighlight					*CocHintHighlight*
"The highlight used for hint text.
hi default link CocHintHighlight   CocUnderline


"CocHighlightText					*CocHighlightText*
"The highlight used for document highlight feature. Normally used for
"highlighting same symbols in the buffer at the current cursor position.
"hi default link CursorColumn


"CocHighlightRead					*CocHighlightRead*
"Highlight for Read` kind of document symbol.
hi default link CocHighlightRead  CocHighlightText


"CocHighlightWrite					*CocHighlightWrite*
"Highlight for Write` kind of document symbol.
hi default link CocHighlightWrite  CocHighlightText
