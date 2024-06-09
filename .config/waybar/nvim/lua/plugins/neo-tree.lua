return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 30,
    },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {
          "node_modules",
        },
      },
      window = {
        mappings = {
          ["<leader>p"] = "image_kitty", -- " or another map
        },
      },
      commands = {
        image_kitty = function(state)
          local node = state.tree:get_node()
          if node.type == "file" then
            require("image_preview").PreviewImage(node.path)
          end
        end,
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}
