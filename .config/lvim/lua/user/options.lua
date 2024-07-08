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
lvim.builtin.lualine.sections.lualine_a = {
  {
    function()
      return ' '
    end,
    padding = { left = 0, right = 2 }, -- We don't need space before this
    color = { fg = "black" },          -- Sets highlighting of component
  }
}


lvim.format_on_save = true
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
