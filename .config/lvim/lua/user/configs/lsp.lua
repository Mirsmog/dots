local lsp_manager = require("lvim.lsp.manager")

vim.lsp.callbacks['textDocument/hover'] = function(_, method, result)
  util.focusable_float(method, function()
    if not (result and result.contents) then
      -- return { 'No information available' }
      return
    end
    local markdown_lines = util.convert_input_to_markdown_lines(result.contents)
    markdown_lines = util.trim_empty_lines(markdown_lines)
    if vim.tbl_isempty(markdown_lines) then
      -- return { 'No information available' }
      return
    end
    local bufnr, winnr = util.fancy_floating_markdown(markdown_lines, {
      pad_left = 1,
      pad_right = 1,
      pad_top = 1,
      pad_bottom = 1, -- add this line for vertical padding
      max_width = 80, -- add this line to set the maximal width of hover float
    })
    util.close_preview_autocmd({ "CursorMoved", "BufHidden", "InsertCharPre" }, winnr)
    return bufnr, winnr
  end)
end


local handlers = {
  ['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded", stylize_markdown = false, }),
  ['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help,
    { border = "rounded", stylize_markdown = false, }),
}

local global_lsp_opts = {
  -- handlers = handlers,
  handlers = handlers

}

lsp_manager.setup("tsserver", global_lsp_opts)
lsp_manager.setup("lua_ls", global_lsp_opts)
lsp_manager.setup("emmet_ls")
