# vim-config
# Configuration
Add following lines to `~/.vimrc`
```vim
let cur_d = getcwd()
chdir ${HOME}/.config/vim/vim-config
source main.vim
execute 'cd' fnameescape(cur_d)
```
