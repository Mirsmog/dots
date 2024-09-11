return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    require("everforest").setup({
      background = "medium",
      transparent_background_level = 0,
      dim_inactive_windows = false,
      italics = true,
      disable_italic_comments = false,
      on_highlights = function(hl, palette)
        hl.NormalFloat = { bg = palette.none }
        hl.FloatBorder = { bg = palette.none, fg = palette.grey1 }
        -- hl.WinBar = { bg = palette.none }
        -- hl.WinBarNC = { bg = palette.none }
        hl.TelescopeResultsDiffChange = { bg = palette.none }
        hl.TelescopeResultsDiffAdd = { bg = palette.none }
        hl.TelescopeResultsDiffDelete = { bg = palette.none }
        hl.TSParameter = { fg = palette.blue }
        hl.TSVariable = { fg = palette.fg }
        hl.CurrentWord = { bold = false, underline = true }
        hl.TSKeywordFunction = { italic = true, fg = palette.orange }
        hl.TSKeywordReturn = { italic = true, fg = palette.orange }
        hl.TSFunction = { italic = true, fg = palette.green }
        hl.TSBoolean = { italic = true, fg = palette.purple }
        hl.TSInclude = { italic = true, fg = palette.red }
        hl.TSKeyword = { italic = true, fg = palette.orange }
      end,
    })
  end,
}
