# dotfiles

## zsh

First, install [sheldon](https://github.com/rossmacarthur/sheldon).

Add configurations in `~/.sheldon/plugins.toml`.

```toml
[plugins.dotfiles]
local = "~/dotfiles/zsh"
use = ["{aliases,history}.zsh"]
```

## neovim

First, install [vim-plug](https://github.com/junegunn/vim-plug).

Add configurations in `~/.config/nvim/init.vim`.

```sh
for file in split(glob("~/dotfiles/nvim/". "**/*.vim"))
    execute 'source' file
endfor
```

