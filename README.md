# dotfiles

Clone this repository.

```sh
git clone https://github.com/uhey22e/dotfiles.git ~/dotfiles
```

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

## tmux

Make symlink in home directory.

```sh
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
```

