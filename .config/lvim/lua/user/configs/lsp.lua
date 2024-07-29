local lspconfig = require('lspconfig')

local handlers = {
  ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded", stylize_markdown = false }),
  ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help,
    { border = "rounded", stylize_markdown = false }),
}

local global_lsp_opts = {
  handlers = handlers
}

vim.diagnostic.config({
  virtual_text = false
})

lspconfig.tsserver.setup(global_lsp_opts)
lspconfig.lua_ls.setup(global_lsp_opts)
lspconfig.emmet_ls.setup({})
