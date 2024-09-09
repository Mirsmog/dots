return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  opts = {
    options = {
      transparency = false, -- Use a transparent background?
      lualine_transparency = true, -- Center bar transparency?
      highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
    },
    styles = {
      types = "NONE",
      methods = "NONE",
      numbers = "NONE",
      strings = "NONE",
      comments = "italic",
      keywords = "italic",
      constants = "NONE",
      functions = "italic",
      operators = "NONE",
      variables = "NONE",
      parameters = "NONE",
      conditionals = "italic",
      virtual_text = "NONE",
    },
  },
  config = function(_, opts)
    require("onedarkpro").setup(opts)
  end,
}
