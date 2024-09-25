return {
  "AlexvZyl/nordic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nordic").setup({
      bold_keywords = false,
      italic_comments = true,
      transparent = {
        bg = false,
        float = false,
      },
      bright_border = false,
      reduced_blue = true,
      swap_backgrounds = false,
      on_highlight = function(highlights, palette)
        highlights.NormalFloat = {
          bg = "NONE",
        }
        highlights.FloatBorder = { bg = "NONE", fg = palette.cyan.base }
        highlights.WinBar = { bg = "NONE" }
        highlights.WinSeparator = { bg = "NONE" }
        highlights.WinBarNC = { bg = "NONE" }
        highlights.LspCodeLens = { bg = "NONE" }
        highlights.IblIndent = { fg = palette.gray1 }
      end,
      cursorline = {
        bold = false,
        bold_number = true,
        theme = "dark",
        blend = 0.85,
      },
    })
  end,
}
