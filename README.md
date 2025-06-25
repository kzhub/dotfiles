# dotfiles

## Setup

### kitty

```bash
mkdir -p ~/.config/kitty
ln -s "$(pwd)/kitty/kitty.conf" ~/.config/kitty/kitty.conf
```

### Neovim (LazyVim)

```bash
mkdir -p ~/.config
ln -s "$(pwd)/nvim" ~/.config/nvim
```

After linking the configuration, launch Neovim. Plugins will be installed automatically on the first run.

```bash
nvim
```
