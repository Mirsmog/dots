return {
  "AlexvZyl/nordic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nordic").setup({
      bold_keywords = false,
      italic_comments = true,
      transparent_bg = false,
      bright_border = false,
      reduced_blue = true,
      swap_backgrounds = false,
      override = {
        NormalFloat = { bg = "NONE" },
        FloatBorder = { bg = "NONE", fg = "#8FBCBB" },
        WinBar = { bg = "NONE" },
        WinSeparator = { bg = "NONE" },
        WinBarNC = { bg = "NONE" },
        LspCodeLens = { bg = "NONE" },
        IblIndent = { fg = "#2E3440" },
      },
      cursorline = {
        bold = false,
        bold_number = true,
        theme = "dark",
        blend = 0.85,
      },
    })
  end,
}
