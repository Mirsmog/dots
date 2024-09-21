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
    { "<leader>ff", LazyVim.pick("files", { show_untracked = true }), desc = "Find Files (Root Dir)" },
  },

  opts = {
    defaults = {
      prompt_prefix = "  ",
      selection_caret = " ",

      file_ignore_patterns = {
        "node_modules",
        "dist",
        "prisma/migrations",
        "%.next",
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
        find_command = {
          "rg",
          "-uu",
          "--files",
          "--hidden",
          "-g",
          "!.git/",
          "-g",
          "!node_modules",
          "-g",
          "!dist",
          "-g",
          "!tmp/",
          "-g",
          "!build/",
        },
        hidden = true,
      },

      lsp_references = {
        initial_mode = "normal",
      },

      lsp_definitions = {
        initial_mode = "normal",
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
