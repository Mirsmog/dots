return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    custom_highlights = function(colors)
      return {
        LineNr = { fg = colors.overlay1 },
      }
    end,
    flavour = "mocha",
    transparent_background = false,
    styles = {                 -- Handles the styles of general hi groups (see `:h highlight-args`):
      comments = { "italic" }, -- Change the style of comments
      keywords = { "italic" },
    },
  }

}
