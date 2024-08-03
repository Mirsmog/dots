return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  opts = {
    options = {
      transparency = true, -- Use a transparent background?
      lualine_transparency = true, -- Center bar transparency?
      highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
    },
  },
  config = function(_, opts)
    require("onedarkpro").setup(opts)
  end,
}
