function! MyPythonHighlight() abort
    " Use Gruvbox colors for python semshi semantic highlighter
    highlight! link semshiGlobal GruvboxYellow
    highlight! link semshiImported GruvboxYellow
    highlight! link semshiParameter  GruvboxFg2
    highlight! link semshiParameterUnused GruvboxFg3
    highlight! link semshiBuiltin GruvboxOrange 
    highlight! link semshiAttribute GruvboxFg0
    highlight! link semshiSelf GruvboxBlue

endfunction

augroup PythonHighlight
    autocmd!
    autocmd ColorScheme * call MyPythonHighlight()
augroup end
