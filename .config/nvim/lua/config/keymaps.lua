-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "+", "<C-a>", opts)
map("n", "-", "<C-x>", opts)
map("n", "<C-n>", "<cmd>RunCode<CR>", opts)
map("n", "<S-l>", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
map("n", "dw", 'vb"_d', opts)
map("n", "<C-a>", "gg<S-v>G", opts)
