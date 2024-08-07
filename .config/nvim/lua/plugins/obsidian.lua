return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    ---@param url string
    follow_url_func = function(url)
      vim.fn.jobstart({ "xdg-open", url }) -- linux
    end,

    workspaces = {
      {
        name = "main",
        path = "~/Documents/obs/Заметки/",
      },
    },

    -- see below for full list of options 👇
  },
}
