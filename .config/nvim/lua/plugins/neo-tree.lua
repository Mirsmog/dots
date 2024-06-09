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
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}
