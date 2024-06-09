return {
  "nvimtools/none-ls.nvim",
  optional = true,
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = opts.sources or {}
    table.insert(
      opts.sources,
      nls.builtins.formatting.prettier.with({
        condition = function(utils)
          return utils.root_has_file({ ".prettierrc" })
        end,
        prefer_local = "node_modules/.bin",
      })
    )
  end,
}
