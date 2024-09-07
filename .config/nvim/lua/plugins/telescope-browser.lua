return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    local fb_actions = require("telescope").extensions.file_browser.actions
    require("telescope").setup({
      extensions = {
        file_browser = {
          theme = "dropdown",
          dir_icon = "󰉖",
          dir_icon_hl = "NvimTreeFolderIcon",
          hijack_netrw = true,
          mappings = {
            ["i"] = {
              -- your custom insert mode mappings
            },
            ["n"] = {
              ["<A-a>"] = fb_actions.create,
            },
          },
        },
      },
    })
    require("telescope").load_extension("file_browser")
  end,
}
