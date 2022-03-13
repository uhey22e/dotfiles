# dotfiles

Clone this repository.

```sh
git clone https://github.com/uhey22e/dotfiles.git ~/dotfiles
```

## zsh

**Prerequisites**

- [sheldon](https://github.com/rossmacarthur/sheldon)

**Installation**

```sh
ln -sf ~/dotfiles/zsh/sheldon.plugins.toml ~/.sheldon/plugins.toml
source ~/.zshrc
```

## neovim

**Prerequisites**

- [vim-plug](https://github.com/junegunn/vim-plug)

**Installation**

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

