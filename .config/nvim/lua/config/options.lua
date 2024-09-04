vim.o.relativenumber = true
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.opt.mouse = ""
vim.cmd([["set iskeyword-=-"]])

vim.opt.fillchars = { eob = " " }
vim.opt.termguicolors = true
vim.opt.wrap = true
vim.opt.laststatus = 0
vim.opt.cmdheight = 0
vim.opt.termguicolors = true

vim.diagnostic.config({
  virtual_text = false,
  float = { border = "rounded" },
})
