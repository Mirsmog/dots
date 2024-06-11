local function load_plugins()
  local plugin_dir = vim.fn.stdpath('config') .. '/lua/user/plugins/'
  local files = vim.fn.readdir(plugin_dir)

  for _, file in ipairs(files) do
    if file ~= "index.lua" and file:match('.lua$') then
      local plugin_name = file:gsub('.lua', '')
      local plugin = require('user.plugins.' .. plugin_name)
      if plugin then
        table.insert(lvim.plugins, plugin)
      end
    end
  end
end

load_plugins()
