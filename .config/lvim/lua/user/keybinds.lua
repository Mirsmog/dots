local telescopeActions = require("lvim.utils.modules").require_on_exported_call "telescope.actions"


lvim.builtin.which_key.mappings["rf"] = {
  "<cmd>:RunFile<cr>", "Run File"
}

lvim.keys.normal_mode["<C-n>"] = ":RunCode<CR>"
lvim.keys.normal_mode["<C-a>"] = "gg<S-v>G"

lvim.builtin.which_key.mappings["rr"] = {
  "<cmd>:RunCode<cr>", "Run Code line"
}

lvim.builtin.which_key.mappings["<leader>"] = {
  "<cmd>lua require'lvim.core.telescope.custom-finders'.find_project_files {previewer = false, hidden = false}<CR>",
  "Find File",
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
