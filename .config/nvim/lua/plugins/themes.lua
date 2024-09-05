local theme = "tokyodark"

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
