return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    view = {
      width = 30,
    },
    filters = {
      dotfiles = true,
      custom = { "node_modules", ".git", ".vscode" },
    },

    renderer = {
      icons = {
        glyphs = {
          default = "",
          symlink = "",
          bookmark = "󰆤",
          modified = "●",
          folder = {
            arrow_closed = "",
            arrow_open = "",
            default = "󰉋",
            open = "󰝰",
            empty = "󰉖",
            empty_open = "󰝰",
          },
        },
      },
    }
  },

  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end
}
