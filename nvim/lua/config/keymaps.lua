-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map jj to ESC in insert mode
vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" })
