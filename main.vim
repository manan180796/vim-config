"if empty(glob('~/.vim/autoload/plug.vim'))
"silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
if has('nvim')
    let home=stdpath('data') . '/plugged'
else
    let home='~/.vim/plugged'
endif
"call plug#begin('~/.vim/plugged')
call plug#begin(home)


source theme/packages.vim
source language/packages.vim
source general/packages.vim

" Initialize plugin system
call plug#end()

" Set theme in this file
source theme/setting.vim

" Set language settings in this file
source language/setting.vim

" Set general setting like keymaps in this file
source general/setting.vim
