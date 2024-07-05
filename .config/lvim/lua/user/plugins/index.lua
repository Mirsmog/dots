local function load_plugins()
  local plugin_dir = vim.fn.stdpath('config') .. '/lua/user/plugins/'

  local function load_from_directory(directory)
    local files = vim.fn.readdir(directory)

    for _, file in ipairs(files) do
      local full_path = directory .. '/' .. file
      if vim.fn.isdirectory(full_path) == 1 then
        load_from_directory(full_path)
      elseif file ~= "index.lua" and file:match('%.lua$') then
        local plugin_name = full_path:gsub(plugin_dir, ''):gsub('%.lua$', ''):gsub('/', '.')
        local plugin = require('user.plugins' .. plugin_name)
        if plugin then
          table.insert(lvim.plugins, plugin)
        end
      end
    end
  end

  load_from_directory(plugin_dir)
end

load_plugins()
