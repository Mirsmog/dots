local random_background = require("utils.random_background")

vim.opt.mouse = ""
vim.o.relativenumber = true
vim.opt.fillchars = { eob = " " }
vim.opt.termguicolors = true
vim.opt.wrap = true
vim.opt.laststatus = 0
vim.opt.cmdheight = 0
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.opt.iskeyword:append("-")

vim.g.css_variables_files = { "./src/assets/styles/vars.css" }
vim.opt.termguicolors = true
vim.g.markdown_recommended_style = 0
vim.g.wall_dir = "~/Pictures/Vswall/"
vim.diagnostic.config({
  virtual_text = false,
})

if vim.g.neovide then
  vim.g.neovide_background_transparency = 0.8

  local image = random_background.random_background_image()

  if image then
    vim.g.neovide_background_image = image
  else
    vim.g.neovide_background_image = "~/Pictures/Vswall/main.png"
  end

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
