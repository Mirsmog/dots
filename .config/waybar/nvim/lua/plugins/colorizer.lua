return {
  "norcalli/nvim-colorizer.lua",
  opts = {
    css = true,
  },
  config = function(_, opts)
    require("colorizer").setup(nil, opts)
  end,
}
