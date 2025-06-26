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

### Kitty キーバインド

- **ペインを閉じる:** `Cmd + Shift + D` (Macのデフォルト)
- **新しいペイン:** `cmd + return`
- **リサイズモード:** `cmd + r`
- **kitty_mod:** `ctrl+shift`
- **レイアウト変更:** `kitty_mod + L`
- **バッファ切り替え:** `shift + L` または `H`
- **検索:** `space space`
- **検索結果のスクロール:** `control+j` または `k`
- **lazygit:** `space + gg`
- **ペイン切り替え:** `kitty_mod + [` または `]`
- **定義へジャンプ:** `gd` (カーソル上)
