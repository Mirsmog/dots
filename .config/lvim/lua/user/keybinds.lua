local telescopeActions = require("lvim.utils.modules").require_on_exported_call "telescope.actions"

lvim.builtin.telescope.defaults.mappings.n["q"] = telescopeActions.close

lvim.builtin["terminal"].open_mapping = "<c-/>"


lvim.keys.normal_mode["<C-n>"] = ":RunCode<CR>"
lvim.keys.normal_mode["<C-a>"] = "gg<S-v>G"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
vim.keymap.set("n", "<S-l>", vim.diagnostic.open_float, { noremap = true, silent = true, buffer = bufnr })


lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  "<cmd>lua require('telescope.builtin').lsp_references({initial_mode='normal'})<CR>",
  "Goto reference"
}

lvim.lsp.buffer_mappings.normal_mode["gd"] = {
  "<cmd>lua require('telescope.builtin').lsp_definitions({initial_mode='normal'})<CR>",
  "Goto definition"
}

lvim.builtin.which_key.mappings["yf"] = {
  "<cmd>lua vim.ui.open(vim.fn.expand('%'))<CR>",
  "Open current file"
}

lvim.builtin.which_key.mappings["f"] = {
  "<cmd>Yazi<cr>",
  "Show Yazi"
}

lvim.builtin.which_key.mappings["s'"] = {
  "<cmd>:Telescope neoclip<cr>",
  "Clipboard History"
}

lvim.builtin.which_key.mappings["<leader>"] = {
  "<cmd>:Telescope file_browser path=%:p:h select_buffer=true initial_mode=normal<CR>",
  "Find File",
}

lvim.builtin.which_key.mappings["sw"] = {
  "<cmd>lua require('telescope.builtin').live_grep()<CR>",
  "Find Word",
}

lvim.builtin.which_key.mappings[";"] = {
  "<cmd>Telescope buffers previewer=false<cr>",
  "Find buffers"
}

lvim.builtin.which_key.mappings["q"] = {
  name = "Session",
  q = { "<cmd>confirm q<CR>", "Quit" },
  s = { "<cmd>lua require('persistence').load()<cr>", "Restore Session" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore Last Session" },
  d = { "<cmd>lua require('persistence').stop()<cr>", "Don't Save Current Session" },
}

lvim.builtin.which_key.mappings["o"] = {
  name = "Obsidian",
  s = { "<cmd>ObsidianSearch<cr>", "Obsidian Search" },
  f = { "<cmd>ObsidianQuickSwitch<cr>", "Obsidian Files" },
  l = { "<cmd>ObsidianLinks<cr>", "Obsidian Links" },
}

lvim.builtin.which_key.mappings["r"] = {
  name = "Run code",
  r = { "<cmd>:RunCode<cr>", "Run Code line" },
  f = { "<cmd>:RunFile<cr>", "Run File" }
}
