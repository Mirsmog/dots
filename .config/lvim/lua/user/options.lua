vim.opt.mouse = ""
vim.o.relativenumber = true
vim.opt.fillchars = { eob = " " }
vim.opt.termguicolors = true
vim.opt.wrap = true
vim.opt.cmdheight = 0
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.g.css_variables_files = { "./src/assets/styles/vars.css" }
vim.opt.termguicolors = true
vim.g.markdown_recommended_style = 0


if vim.g.neovide then
  vim.g.neovide_background_transparency = 0.8
  vim.g.neovide_background_image = "~/Pictures/Vswall/main.png"

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
end

lvim.transparent_window = true
lvim.colorscheme = 'onedark_dark'
lvim.format_on_save = true
lvim.builtin.bufferline.active = false
