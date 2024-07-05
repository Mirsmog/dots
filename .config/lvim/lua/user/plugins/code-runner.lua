return {
  "CRAG666/code_runner.nvim",
  config = function()
    require('code_runner').setup({
      filetype = {
        typescript = "ts-node",
        go = "go run"
      },
      mode = "float",
      float = {
        close_key = "q",
        border = "rounded"
      }
    })
  end
}
