return {
  "mirsmog/vim-moonfly-colors",
  name = "moonfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.moonflyWinSeparator = 0
    vim.g.moonflyItalics = true
    vim.g.moonflyCursorColor = true
    vim.g.moonflyNormalFloat = true
    vim.g.moonflyTransparent = true
    vim.g.moonflyUnderlineMatchParen = true
  end,
}
