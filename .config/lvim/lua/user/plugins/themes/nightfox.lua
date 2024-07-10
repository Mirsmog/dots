return {
  "EdenEast/nightfox.nvim",
  config = function()
    require('nightfox').setup({
      options = {
        styles = { -- Style to be applied to different syntax groups
          variables = "italic",
          constants = "italic",
          keywords = "italic",
          comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
          conditionals = "NONE",
          functions = "NONE",
          numbers = "NONE",
          operators = "NONE",
          strings = "NONE",
          types = "NONE",
        },
        modules = {

        },
      },
    })
  end
}
