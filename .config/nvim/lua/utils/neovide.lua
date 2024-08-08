-- local random_background = require("utils.random_background")
-- local image = random_background.random_background_image()
--
-- if image then
--   vim.g.neovide_background_image = image
-- else
--   vim.g.neovide_background_image = vim.fn.expand(vim.g.wall_dir) .. "main.png"
--   vim.g.neovide_background_transparency = 0.8
-- end
--
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animate_in_insert_mode = false
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_scroll_animation_far_lines = 0
vim.g.neovide_position_animation_length = 0
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_scroll_animation_length = 0

vim.g.neovide_padding_top = 0
vim.g.neovide_padding_bottom = 0
vim.g.neovide_padding_right = 0
vim.g.neovide_padding_left = 0

vim.g.neovide_window_floating_opacity = 0
vim.g.neovide_floating_shadow = false
vim.g.neovide_floating_blur = 0
vim.g.neovide_window_floating_blur = 0
