-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- vim.keymap.del("n", "C-s")
-- vim.keymap.del("n", "C-l")
-- vim.keymap.del("n", "C-h")
-- vim.keymap.del("n", "H")
-- vim.keymap.del("n", "L")

vim.keymap.set("n", "C-s", ":w<CR>")
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
