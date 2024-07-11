local lsp_manager = require("lvim.lsp.manager")

local handlers = {
  ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded", stylize_markdown = false, }),
  ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help,
    { border = "rounded", stylize_markdown = false, }),
}

local global_lsp_opts = {
  handlers = handlers,

}

lsp_manager.setup("tsserver", global_lsp_opts)
lsp_manager.setup("lua_ls", global_lsp_opts)
lsp_manager.setup("emmet_ls")
