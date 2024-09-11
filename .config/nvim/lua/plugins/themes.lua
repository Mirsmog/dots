local theme = "nordic"

return {
  require("plugins.themes.kanagawa"),
  require("plugins.themes.gruvbox"),
  require("plugins.themes.everforest"),
  require("plugins.themes.moonfly"),
  require("plugins.themes.rose-pine"),
  require("plugins.themes.nordic"),
  require("plugins.themes.onedarkpro"),
  require("plugins.themes.tokyodark"),
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = theme,
    },
  },
}
