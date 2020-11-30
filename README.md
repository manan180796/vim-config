# vim-config
# Configuration
Add following lines to `~/.vimrc`
```vim
let cur_d = getcwd()
chdir /path/to/vim-config
source main.vim
execute 'cd' fnameescape(cur_d)
```
