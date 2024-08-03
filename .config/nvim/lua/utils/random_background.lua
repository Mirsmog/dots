local M = {}

local function read_file(file)
  local f = io.open(file, "r")
  if f then
    local content = f:read("*all")
    f:close()
    return content
  end
  return nil
end

local function write_file(file, content)
  local f = io.open(file, "w")
  f:write(content)
  f:close()
end

function M.random_background_image()
  local images_dir = vim.fn.expand(vim.g.wall_dir)

  local png_images = vim.fn.glob(images_dir .. "*.png", false, true)
  local jpg_images = vim.fn.glob(images_dir .. "*.jpg", false, true)

  local images = {}
  for _, image in ipairs(png_images) do
    table.insert(images, image)
  end
  for _, image in ipairs(jpg_images) do
    table.insert(images, image)
  end

  if #images == 0 then
    return nil
  end

  local last_image_file = vim.fn.stdpath("cache") .. "/last_background_image.txt"
  local last_image = read_file(last_image_file)

  if last_image then
    for i, image in ipairs(images) do
      if image == last_image then
        table.remove(images, i)
        break
      end
    end
  end

  math.randomseed(os.time())
  local random_index = math.random(#images)
  local selected_image = images[random_index]

  write_file(last_image_file, selected_image)

  return selected_image
end

return M
