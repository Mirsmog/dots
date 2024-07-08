require("lvim.lsp.manager").setup("emmet_ls")

table.insert(lvim.builtin.alpha.dashboard.section.buttons.entries,
  { "s", "  Open Last Session", "<cmd>lua require('persistence').load()<cr>" })

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.opt.relativenumber = true
vim.opt.mouse = ""
vim.opt.fillchars = {
  eob = " "
}
vim.opt.termguicolors = true
vim.opt.wrap = true
vim.opt.cmdheight = 0

lvim.format_on_save = true
lvim.builtin.lualine.style = "default"
lvim.builtin.cmp.completion = {
  completeopt = "menu,menuone,noinsert",
}
lvim.transparent_window = false
lvim.colorscheme = 'duskfox'
lvim.builtin.telescope.defaults.file_ignore_patterns = { "node_modules" }

lvim.builtin.alpha.dashboard.section.header.val = {
  '',
  '',
  '',
  '',
  '',
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}
