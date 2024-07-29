local function load_configs()
  local config_dir = vim.fn.stdpath('config') .. '/lua/user/configs/'

  if vim.fn.isdirectory(config_dir) == 0 then
    config_dir = vim.env.LUNARVIM_CONFIG_DIR .. '/lua/user/configs/'
  end

  local function load_from_directory(directory)
    local files = vim.fn.readdir(directory)

    for _, file in ipairs(files) do
      local full_path = directory .. '/' .. file
      if vim.fn.isdirectory(full_path) == 0 and file ~= "index.lua" and file:match('%.lua$') then
        local config_name = full_path:gsub(config_dir, ''):gsub('%.lua$', ''):gsub('/', '.')
        require('user.configs.' .. config_name)
      end
    end
  end

  load_from_directory(config_dir)
end

load_configs()
