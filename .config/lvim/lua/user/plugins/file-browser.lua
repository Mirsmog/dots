return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    local fb_actions = require 'telescope'.extensions.file_browser.actions;
    require("telescope").setup({
      extensions = {
        pickers = {
          lsp_references = {
            theme = "dropdown",
          },
          lsp_definitions = {
            theme = "dropdown",
          }
        },
        file_browser = {
          theme = "dropdown",
          dir_icon = "󰉖",
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
    -- To get telescope-file-browser loaded and working with telescope,
    -- you need to call load_extension, somewhere after setup function:
    require("telescope").load_extension "file_browser"
  end
}
