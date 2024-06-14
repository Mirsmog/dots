return {
  "CRAG666/code_runner.nvim",
  config = function()
    require('code_runner').setup({
      filetype = {
        typescript = "ts-node"
      },
      mode = "float",
      float = {
        close_key = "q",
        border = "rounded"
      }
    })
  end
}
