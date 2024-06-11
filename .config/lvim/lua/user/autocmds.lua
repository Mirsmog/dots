return { vim.cmd([[
augroup kitty_mp
    autocmd!
    au VimEnter * :silent !kitty @ set-spacing padding=0 margin=0
    au VimEnter * :silent !kitty @ set-font-size 14

    au VimLeave * :silent !kitty @ set-spacing padding=default margin=default
    au VimLeave * :silent !kitty @ set-font-size 12
    au VimLeave * :silent !kitty @ set-colors ~/.config/kitty/current-theme.conf

augroup END
]])
}
