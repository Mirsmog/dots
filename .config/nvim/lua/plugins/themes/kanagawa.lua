return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      overrides = function(colors) -- add/modify highlights
        local hl = vim.api.nvim_set_hl
        return {
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
          WinBar = { bg = "NONE" },
          WinBarNC = { bg = "NONE" },
          TelescopeResultsDiffChange = { bg = "NONE" },
          TelescopeResultsDiffAdd = { bg = "NONE" },
          TelescopeSelection = { fg = colors.palette.dragonRed },
          LineNr = { bg = "NONE" },
          IblIndent = { fg = colors.palette.sumiInk3 },

          CursorLineNr = { bg = "NONE" },
          CursorLine = { bg = "NONE" },

          GitSignsAdd = { bg = "NONE" },
          GitSignsChange = { bg = "NONE" },
          GitSignsDelete = { bg = "NONE" },
          GitSignsChangeDelete = { bg = "NONE" },

          DiagnosticError = { bg = "NONE" },
          DiagnosticSignError = { bg = "NONE" },
          DiagnosticSignHint = { bg = "NONE" },
          DiagnosticSignInfo = { bg = "NONE" },
          DiagnosticSignWarn = { bg = "NONE" },
        }
      end,
      background = { -- map the value of 'background' option to a theme
        dark = "dragon", -- try "dragon" !
        light = "lotus",
      },
    })
  end,
}
