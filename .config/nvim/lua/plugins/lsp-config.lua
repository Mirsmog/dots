return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,
    },
    servers = {
      cssls = {
        settings = {
          css = { validate = true, lint = {
            unknownAtRules = "ignore",
          } },
          scss = { validate = true, lint = {
            unknownAtRules = "ignore",
          } },
          less = { validate = true, lint = {
            unknownAtRules = "ignore",
          } },
        },
      },
    },
  },
}
