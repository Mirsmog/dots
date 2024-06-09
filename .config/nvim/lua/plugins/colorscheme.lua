return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      variant = "main",
      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },
    }
  end,
}
