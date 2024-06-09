-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local discipline = require("config.discipline")
discipline.cowboy()

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete word backward
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "<A-w>", LazyVim.ui.bufremove, { desc = "close tab" })
keymap.set("n", "<C-w>", "<C-W>c", opts)

keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", opts)
