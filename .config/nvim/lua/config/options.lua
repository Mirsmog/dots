vim.g.wall_dir = "~/Pictures/nwall/"
vim.g.lazyvim_prettier_needs_config = true
vim.g.markdown_recommended_style = 0

vim.o.relativenumber = true
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.opt.mouse = ""
vim.opt.iskeyword:append("-")
vim.opt.fillchars = { eob = " " }
vim.opt.termguicolors = true
vim.opt.wrap = true
vim.opt.laststatus = 0
vim.opt.cmdheight = 0
vim.opt.termguicolors = true

vim.diagnostic.config({
  virtual_text = false,
})

if vim.g.neovide then
  require("utils.neovide")
end
