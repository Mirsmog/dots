local actions = require("telescope.actions")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>;",
      "<cmd>Telescope buffers sort_mru=true previewer=false sort_lastused=true initial_mode=normal<cr>",
      desc = "Switch Buffer",
    },
    { "<leader>o", "<cmd>Telescope oldfiles initial_mode=normal<cr>", desc = "Recent" },
    {
      "<leader><space>",
      "<cmd>:Telescope file_browser path=%:p:h select_buffer=true initial_mode=normal<CR>",
      desc = "Find File",
    },
  },

  opts = {
    defaults = {
      prompt_prefix = "  ",
      selection_caret = " ",

      file_ignore_patterns = {
        "node_modules",
      },

      mappings = {
        n = {
          ["q"] = actions.close,
        },
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
        hidden = true,
      },
      buffers = {
        theme = "dropdown",
        initial_mode = "normal",
        mappings = {
          i = {
            ["<C-d>"] = actions.delete_buffer,
          },
          n = {
            ["dd"] = actions.delete_buffer,
          },
        },
      },

      oldfiles = {
        theme = "dropdown",
      },
    },
  },
}
