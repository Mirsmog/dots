return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    color_overrides = {

      macchiato = {
        rosewater = "#f4dbd6",
        flamingo = "#e39e74",
        pink = "#f5bde6",
        mauve = "#a786ff",
        red = "#db6088",
        maroon = "#bec7d1",
        peach = "#dedc52",
        yellow = "#8589e6",
        green = "#cfa1ed",
        teal = "#8bd5ca",
        sky = "#a786ff",
        sapphire = "#7dc4e4",
        blue = "#9cda7c",
        lavender = "#bec7d1",
        text = "#cad3f5",
        subtext1 = "#b8c0e0",
        subtext0 = "#a5adcb",
        overlay2 = "#939ab7",
        overlay1 = "#8087a2",
        overlay0 = "#6e738d",
        surface2 = "#5b6078",
        surface1 = "#494d64",
        surface0 = "#363a4f",
        base = "#1d1a2f",
        mantle = "#1a172a",
        crust = "#181926",
      }
    },
    custom_highlights = function(colors)
      return {
        LineNr = { fg = colors.overlay1 },
      }
    end,
    flavour = "macchiato",
    transparent_background = false,
    styles = {                 -- Handles the styles of general hi groups (see `:h highlight-args`):
      comments = { "italic" }, -- Change the style of comments
      keywords = { "italic" },
    },
  }

}
