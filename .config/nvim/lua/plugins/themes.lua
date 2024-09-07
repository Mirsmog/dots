-- local theme = "onedark_dark"
local theme = "moonfly"

return {
  require("plugins.themes.onedarkpro"),
  require("plugins.themes.moonfly"),
  require("plugins.themes.tokyodark"),
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = theme,
    },
  },
}
