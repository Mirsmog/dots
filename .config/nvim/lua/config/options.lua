-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.mouse = ""
vim.opt.wrap = true

vim.filetype.add({
  extension = {
    conf = "bash",
    yuck = "bash",
  },
})

vim.cmd([[
augroup kitty_mp
    autocmd!
    au VimEnter * :silent !kitty @ set-spacing padding=0 margin=0
    au VimEnter * :silent !kitty @ set-font-size 14

    au VimLeave * :silent !kitty @ set-spacing padding=default margin=default
    au VimLeave * :silent !kitty @ set-font-size default
augroup END
]])

vim.diagnostic.config({
  virtual_text = false,
  float = { border = "rounded" },
})

vim.cmd(
  [[autocmd CursorHold * lua vim.diagnostic.open_float({scope="line", focusable=false})]]
)

-- Set padding in Kitty when entering
