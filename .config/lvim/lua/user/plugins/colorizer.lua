return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({ "css", "scss", "html", "javascript", "typescript" }, {
      RGB = true,
      RRGGBB = true,
      RRGGBBAA = true,
      rgb_fn = true,
      hsl_fn = true,
      css = true,
      css_fn = true,
    })
  end,
}
