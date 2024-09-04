local theme = "onedark_dark"

return {
  require("plugins.themes.eva"),
  require("plugins.themes.onedark"),
  require("plugins.themes.solarized-osaka"),
  require("plugins.themes.nightfox"),
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = theme,
    },
  },
}
