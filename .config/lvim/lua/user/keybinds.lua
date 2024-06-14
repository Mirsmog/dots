local telescopeActions = require("lvim.utils.modules").require_on_exported_call "telescope.actions"


lvim.builtin.which_key.mappings["rf"] = {
  "<cmd>:RunFile<cr>", "Run File"
}

lvim.keys.normal_mode["<C-n>"] = ":RunCode<CR>"

lvim.builtin.which_key.mappings["rr"] = {
  "<cmd>:RunCode<cr>", "Run Code line"
}

lvim.builtin.which_key.mappings["<leader>"] = {
  "<cmd>lua require'lvim.core.telescope.custom-finders'.find_project_files {previewer = false}<CR>",
  "Find File",
}

lvim.builtin.which_key.mappings[";"] = {
  "<cmd>Telescope buffers previewer=false<cr>", "Find buffers"
}

lvim.builtin.telescope.defaults.mappings.n["q"] = telescopeActions.close
