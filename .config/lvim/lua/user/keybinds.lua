local telescopeActions = require("lvim.utils.modules").require_on_exported_call "telescope.actions"

lvim.builtin.which_key.mappings["rf"] = {
  "<cmd>:RunFile<cr>", "Run File"
}

lvim.builtin.which_key.mappings["f"] = {
  "<cmd>Yazi<cr>", "Show Yazi"
}


lvim.keys.normal_mode["<C-n>"] = ":RunCode<CR>"
lvim.keys.normal_mode["<C-a>"] = "gg<S-v>G"




lvim.lsp.buffer_mappings.normal_mode["gr"] = { "<cmd>lua require('telescope.builtin').lsp_references()<CR>",
  "Goto reference" }

lvim.builtin.which_key.mappings["yf"] = { "<cmd>lua vim.ui.open(vim.fn.expand('%'))<CR>", "Open current file" }

lvim.lsp.buffer_mappings.normal_mode["gd"] = { "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>",
  "Goto definition" }

lvim.builtin.which_key.mappings["rr"] = {
  "<cmd>:RunCode<cr>", "Run Code line"
}

lvim.builtin.which_key.mappings["s'"] = {
  "<cmd>:Telescope neoclip<cr>", "Clipboard History"
}

lvim.builtin.which_key.mappings["<leader>"] = {
  "<cmd>:Telescope file_browser path=%:p:h select_buffer=true initial_mode=normal<CR>",
  "Find File",
}

lvim.builtin.which_key.mappings["sw"] = {
  "<cmd>lua require('telescope.builtin').live_grep()<CR>",
  "Find Word",
}


lvim.builtin.which_key.mappings["qs"] = {
  "<cmd>lua require('persistence').load()<cr>", "Restore Session"
}
lvim.builtin.which_key.mappings["ql"] = {
  "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore Last Session"
}

lvim.builtin.which_key.mappings["qd"] = {
  "<cmd>lua require('persistence').stop()<cr>", "Don't Save Current Session"
}

lvim.builtin.which_key.mappings[";"] = {
  "<cmd>Telescope buffers previewer=false<cr>", "Find buffers"
}

lvim.builtin.which_key.mappings["os"] = {
  "<cmd>ObsidianSearch<cr>", "Obsidian Search"
}
lvim.builtin.which_key.mappings["of"] = {
  "<cmd>ObsidianQuickSwitch<cr>", "Obsidian Files"
}
lvim.builtin.which_key.mappings["ol"] = {
  "<cmd>ObsidianLinks<cr>", "Obsidian Links"
}

lvim.builtin.telescope.defaults.mappings.n["q"] = telescopeActions.close
