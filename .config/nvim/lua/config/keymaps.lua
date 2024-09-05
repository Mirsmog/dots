local Util = require("lazy.util")
local map = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

map("n", "+", "<C-a>", opts)
map("n", "-", "<C-x>", opts)
map("n", "<C-n>", "<cmd>RunCode<CR>", opts)
map("n", "<S-l>", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

vim.keymap.set("n", "<C-/>", function()
  Util.float_term(nil, { border = "rounded", cwd = LazyVim.root() })
end, { desc = "Term with border" })

map("n", "dw", 'vb"_d', opts)
map("n", "<C-a>", "gg<S-v>G", opts)
