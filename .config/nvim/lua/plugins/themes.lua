local theme = "catppuccin-latte"

return {
  require("plugins.themes.nordic"),
  require("plugins.themes.kanagawa"),
  require("plugins.themes.onedarkpro"),
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = theme,
    },
  },
}
