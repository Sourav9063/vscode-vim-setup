-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- paste without overwriting
vim.keymap.set("v", "p", "P")

-- redo
vim.keymap.set("n", "U", "<C-r>")

-- ii to escape
vim.keymap.set({ "v", "o", "i" }, "ii", "<Esc>")

-- H L to
vim.keymap.set({ "n", "v", "o" }, "L", "$")
vim.keymap.set({ "n", "v", "o" }, "H", "^")

-- vim.keymap.set("n", "<Esc>", ":noh<cr>")

-- Visual Selection Search
vim.keymap.set("v", "/", '"sy/<C-R>s<CR>', { silent = true, noremap = true })
