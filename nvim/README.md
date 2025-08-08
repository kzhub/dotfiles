# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Git Diffview Plugin

GitHubのような横並びdiff表示とインタラクティブなステージング機能を提供します。

### キーマップ

| キー | 説明 |
|------|------|
| `<leader>gd` | Diffview起動（全変更を横並び表示） |
| `<leader>gD` | Diffview終了 |
| `<leader>gh` | 現在ファイルの履歴表示 |
| `<leader>gH` | ブランチ全体の履歴表示 |

### Diffview内での操作

#### ファイルパネル（左側）
| キー | 説明 |
|------|------|
| `j`/`k` | ファイル間を移動 |
| `Enter` | ファイルを選択してdiff表示 |
| `s` または `-` | ファイル/ハンクをステージング/アンステージング切り替え |
| `S` | 全ファイルをステージング |
| `U` | 全ファイルをアンステージング |
| `X` | 変更を破棄（復元） |
| `<tab>` | ファイルパネルの表示切り替え |

#### Diff表示（右側）
| キー | 説明 |
|------|------|
| `s` または `-` | カーソル位置のハンクをステージング（visual modeで範囲選択も可能） |
| `ghs` | ハンクをステージング（Gitsigns経由） |
| `ghu` | ハンクをアンステージング |

### コマンド

```vim
:DiffviewOpen [git rev] [options]    " Diffview起動
:DiffviewClose                        " Diffview終了
:DiffviewToggleFiles                  " ファイルパネル切り替え
:DiffviewRefresh                      " 表示更新
:DiffviewFileHistory [paths]          " ファイル履歴表示
```

### 使用例

```vim
:DiffviewOpen                     " 現在の変更を表示
:DiffviewOpen HEAD~2              " 2コミット前との差分
:DiffviewOpen HEAD~2..HEAD~1      " 特定範囲の差分
:DiffviewOpen origin/main         " ブランチとの差分
:DiffviewFileHistory %            " 現在ファイルの履歴
:DiffviewFileHistory              " プロジェクト全体の履歴
```

### ワークフロー例

1. `<leader>gd` でDiffview起動
2. 左のファイルパネルでファイル選択（`j`/`k`で移動）
3. `Enter`でdiff表示
4. `s`でステージング、もう一度`s`でアンステージング
5. `:Git commit`または`<leader>gc`でコミット
