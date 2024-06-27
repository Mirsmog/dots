return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({ "css", "lua", "scss", "html", "javascript", "typescript", "jsonc", "json" }, {
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
