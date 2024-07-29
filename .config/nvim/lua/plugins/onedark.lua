return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  opts = {
    options = {
      transparency = true
    }
  },
  config = function(_, opts)
    require("onedarkpro").setup(opts)
  end
}
