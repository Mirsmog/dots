-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.mouse = ""
vim.opt.wrap = true

vim.filetype.add({
  extension = {
    conf = "bash",
    yuck = "bash",
  },
})

vim.cmd([[
augroup kitty_mp
    autocmd!
    au VimEnter * :silent !kitty @ set-spacing padding=0 margin=0
    au VimEnter * :silent !kitty @ set-font-size 14

    au VimLeave * :silent !kitty @ set-spacing padding=default margin=default
    au VimLeave * :silent !kitty @ set-font-size default
augroup END
]])

vim.diagnostic.config({
  virtual_text = false,
  float = { border = "rounded" },
})

vim.cmd(
  [[autocmd CursorHold * lua vim.diagnostic.open_float({scope="line", focusable=false})]]
)

local M = {}
local css_variables = {}

-- Function to scan CSS files and extract variables
function M.collect_css_variables()
  local path = vim.fn.getcwd() -- Get the current working directory
  local css_files = vim.fn.globpath(path, "**/*.css", false, true) -- Find all CSS files

  for _, file in ipairs(css_files) do
    for line in io.lines(file) do
      -- Match CSS variable definitions like: --primary-color: #333;
      for var in line:gmatch("(--[%w%-]+)%s*:") do
        if not css_variables[var] then
          css_variables[var] = true -- Add unique variables to the table
        end
      end
    end
  end
end

-- Completion function for nvim-cmp
function M.complete_css_variables(argLead, cmdLine, cursorPos)
  local items = {}
  for var, _ in pairs(css_variables) do
    if var:sub(1, #argLead) == argLead then
      table.insert(items, {
        label = var,
        kind = vim.lsp.protocol.CompletionItemKind.Variable,
      })
    end
  end
  return items
end

-- Setup function to be called in init.lua
function M.setup()
  M.collect_css_variables() -- Collect variables on setup

  -- Register the completion function with nvim-cmp
  require("cmp").register_source("css_variables", {
    complete = M.complete_css_variables,
  })
end

return M
