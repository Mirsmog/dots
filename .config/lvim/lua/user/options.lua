require("lvim.lsp.manager").setup("emmet_ls")

vim.opt.relativenumber = true
vim.opt.mouse = ""
vim.opt.fillchars = { eob = " " }
vim.opt.termguicolors = true
vim.opt.wrap = true
vim.opt.cmdheight = 0
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

lvim.builtin.lualine.sections.lualine_a = {
  {
    function()
      return ''
    end,
    padding = { left = 1, right = 2 },
  }
}

lvim.format_on_save = true
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

table.insert(lvim.builtin.alpha.dashboard.section.buttons.entries,
  { "s", "  Open Last Session", "<cmd>lua require('persistence').load()<cr>" })
