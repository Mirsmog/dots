local theme = require("lualine.themes.tokyonight")
theme.normal.c.bg = nil
theme.normal.a = {
  bg = "#27A0B8",
  fg = "#1f2335"
}

theme.normal.b.bg = "#1f2335"
theme.visual.b.bg = "#1f2335"
theme.insert.b.bg = "#1f2335"

-- lvim.builtin.lualine.options.theme = theme

lvim.builtin.lualine.sections.lualine_a = {
  {
    function()
      return ''
    end,
    padding = { left = 1, right = 2 },
    color = { gui = "bold" },
  }
}

vim.opt.laststatus = 0

lvim.builtin.lualine.style = "default"

lvim.builtin.lualine.active = false
