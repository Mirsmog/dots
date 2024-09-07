local theme = "onedark_dark"

return {
  require("plugins.themes.onedarkpro"),
  require("plugins.themes.tokyodark"),
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = theme,
    },
  },
}
