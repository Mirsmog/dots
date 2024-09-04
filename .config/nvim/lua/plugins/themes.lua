local theme = "onedark_dark"

return {
  require("plugins.themes.onedarkpro"),
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = theme,
    },
  },
}
