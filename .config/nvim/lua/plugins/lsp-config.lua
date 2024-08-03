return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    for _, keymap in ipairs(keys) do
      if keymap[1] == "<leader>ca" then
        keymap[1] = "<leader>la"
      elseif keymap[1] == "<leader>cl" then
        keymap[1] = "<leader>ll"
      elseif keymap[1] == "<leader>cc" then
        keymap[1] = "<leader>lc"
      elseif keymap[1] == "<leader>cC" then
        keymap[1] = "<leader>lC"
      elseif keymap[1] == "<leader>cR" then
        keymap[1] = "<leader>lR"
      elseif keymap[1] == "<leader>cr" then
        keymap[1] = "<leader>lr"
      elseif keymap[1] == "<leader>cA" then
        keymap[1] = "<leader>lA"
      end
    end

    opts.diagnostics.virtual_text = false
  end,
}
