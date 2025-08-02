-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map jj to ESC in insert mode
vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode" })

-- CopyRelPath command to copy relative path to clipboard
vim.api.nvim_create_user_command("CopyRelPath", function()
  vim.fn.setreg('+', vim.fn.expand('%'))
end, { desc = "Copy relative path to clipboard" })

-- Keybinding to copy relative path
vim.keymap.set("n", "<leader>cp", ":CopyRelPath<CR>", { desc = "Copy relative path" })
