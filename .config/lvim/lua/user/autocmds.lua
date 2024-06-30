vim.cmd([[
augroup kitty_mp
    autocmd!
    au VimEnter * :silent !kitty @ set-spacing padding=0 margin=0
    au VimEnter * :silent !kitty @ set-background-opacity 1
    au VimEnter * :silent !kitty @ set-colors background=\#001419

    au VimLeave * :silent !kitty @ set-spacing padding=default margin=default
    au VimLeave * :silent !kitty @ set-background-opacity 0.8
    au VimLeave * :silent !kitty @ set-colors ~/.config/kitty/current-theme.conf

augroup END
]])

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.wo.conceallevel = 2
  end
})
