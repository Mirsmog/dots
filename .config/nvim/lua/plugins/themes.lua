local theme = "kanagawa"

return {
  require("plugins.themes.kanagawa"),
  require("plugins.themes.gruvbox"),
  require("plugins.themes.everforest"),
  require("plugins.themes.moonfly"),
  require("plugins.themes.rose-pine"),
  require("plugins.themes.tokyodark"),
  require("plugins.themes.onedarkpro"),
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = theme,
    },
  },
}
