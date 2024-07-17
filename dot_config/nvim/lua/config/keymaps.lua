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

-- vim.keymap.set("n", "<leader>n", "<CMD>NoiceAll<CR>", { desc = "NoiceAll" })
-- Go to Beginning or End of line
-- keymap.set({ "n", "v" }, "C-h", "_^", { desc = "Move to the beginning of the line" })
-- keymap.set({ "n", "v" }, "C-l", "$", { desc = "Move to the end of the line" })

-- surround keybinds
vim.keymap.set("v", "'", [[:s/\%V\(.*\)\%V/'\1'/ <CR>]], { desc = "Surround selection with '" })
vim.keymap.set("v", '"', [[:s/\%V\(.*\)\%V/"\1"/ <CR>]], { desc = 'Surround selection with "' })
vim.keymap.set("v", "*", [[:s/\%V\(.*\)\%V/*\1*/ <CR>]], { desc = "Surround selection with *" })

vim.keymap.set("n", "<leader>s*", [[:s/\<<C-r><C-w>\>/*<C-r><C-w>\*/ <CR>]], { desc = "Surround word with *" })
vim.keymap.set("n", '<leader>s"', [[:s/\<<C-r><C-w>\>/"<C-r><C-w>\"/ <CR>]], { desc = 'Surround word with "' })
vim.keymap.set("n", "<leader>s'", [[:s/\<<C-r><C-w>\>/'<C-r><C-w>\'/ <CR>]], { desc = "Surround word with '" })
