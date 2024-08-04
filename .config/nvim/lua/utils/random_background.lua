local M = {}

--- Reads the contents of a file.
local function read_file(file)
  local f = io.open(file, "r")
  if f then
    local content = f:read("*all")
    f:close()
    return content
  end
  return nil
end

--- Returns the transparency level of the current background image.
function M.get_transparency_level()
  local dir_name = vim.fn.fnamemodify(vim.g.neovide_background_image, ":h:t")
  local transparency_level = tonumber(dir_name)
  return transparency_level and transparency_level / 10 or 0.7
end

--- Returns a random background image from the configured directory.
function M.random_background_image()
  local images_dir = vim.fn.expand(vim.g.wall_dir)
  local png_images = vim.fn.glob(images_dir .. "**/*.png", false, true)
  local jpg_images = vim.fn.glob(images_dir .. "**/*.jpg", false, true)
  local images = vim.list_extend(png_images, jpg_images)

  if #images == 0 then
    return nil
  end

  local last_image_file = vim.fn.stdpath("cache") .. "/last_background_image.txt"
  local last_image = read_file(last_image_file)

  local images_copy = {}
  for _, image in ipairs(images) do
    table.insert(images_copy, image)
  end

  if last_image then
    for i, image in ipairs(images_copy) do
      if image == last_image then
        table.remove(images_copy, i)
        break
      end
    end
  end

  if #images_copy == 0 then
    vim.fn.system("rm " .. last_image_file)
    return M.random_background_image()
  end

  math.randomseed(os.time())
  local random_index = math.random(#images_copy)
  local selected_image = images_copy[random_index]

  local f = io.open(last_image_file, "w")
  f:write(selected_image)
  f:close()

  vim.g.neovide_background_image = selected_image
  vim.g.neovide_background_transparency = M.get_transparency_level()

  return selected_image
end

--- Sets the wallpaper transparency level.
function M.set_wallpaper_transparency(transparency_level)
  local current_image = vim.g.neovide_background_image
  local images_dir = vim.fn.expand(vim.g.wall_dir)
  local dir_name = tostring(transparency_level * 10)

  local new_image_path = images_dir .. dir_name .. "/" .. vim.fn.fnamemodify(current_image, ":t")
  local new_dir = images_dir .. dir_name

  -- Create directory if it does not exist
  local dir = io.open(new_dir, "r")
  if not dir then
    print("Creating directory: " .. new_dir)
    vim.fn.system("mkdir -p " .. new_dir)
  else
    dir:close()
  end

  vim.fn.system("mv " .. current_image .. " " .. new_image_path)

  vim.g.neovide_background_image = new_image_path
  vim.g.neovide_background_transparency = transparency_level / 10
end

--- Moves an image to a directory based on its transparency level.
function M.move_image_to_transparency_level(image_path, level)
  local image_dir = vim.fn.expand(vim.g.wall_dir)
  local level_subdir = image_dir .. tostring(level)

  -- Create directory if it does not exist
  local dir = io.open(level_subdir, "r")
  if not dir then
    print("Creating directory: " .. level_subdir)
    vim.fn.system("mkdir -p " .. level_subdir)
  else
    dir:close()
  end

  local new_image_path = level_subdir .. "/" .. vim.fn.fnamemodify(image_path, ":t")
  vim.fn.system("mv " .. image_path .. " " .. new_image_path)
end

--- User command to set the wallpaper transparency level.
vim.api.nvim_create_user_command("SetWP", function(args)
  M.move_image_to_transparency_level(vim.g.neovide_background_image, args.args)
end, { nargs = 1 })

return M
