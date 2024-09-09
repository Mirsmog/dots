return {
  "sainnhe/gruvbox-material",
  config = function()
    vim.g.gruvbox_material_foreground = "material"
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_enable_italic = 1

    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("custom_highlights_gruvboxmaterial", {}),
      pattern = "gruvbox-material",
      callback = function()
        local config = vim.fn["gruvbox_material#get_configuration"]()
        local palette =
          vim.fn["gruvbox_material#get_palette"](config.background, config.foreground, config.colors_override)
        local set_hl = vim.fn["gruvbox_material#highlight"]
        set_hl("NormalFloat", palette.none, palette.none)
        set_hl("FloatBorder", palette.grey1, palette.none)
        set_hl("WinBar", palette.none, palette.none)
        set_hl("WinBarNC", palette.none, palette.none)
      end,
    })
  end,
}
