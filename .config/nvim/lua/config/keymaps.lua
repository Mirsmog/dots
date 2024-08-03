-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local map = LazyVim.safe_keymap_set
map("n", "<C-n>", "<cmd>RunCode<CR>")

map("n", "<leader>l", "", { desc = "Lsp" })
map("n", "<S-l>", "<cmd>lua vim.diagnostic.open_float()<CR>")

map("n", "dw", 'vb"_d')

map("n", "<C-a>", "gg<S-v>G")
