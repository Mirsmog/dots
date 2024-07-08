local wk = require("which-key")
local telescope = require("telescope.builtin")

vim.api.nvim_set_keymap("n", "<C-a>", "gg<S-v>G", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-n>", "<cmd>RunCode<CR>", { noremap = true, silent = true })

local mappings = {
  ["rf"] = { "<cmd>RunFile<CR>", "Run File" },
  ["sf"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  ["d"] = { LazyVim.ui.bufremove, "Close Buffer", mode = "n" },
  ["fy"] = { "<cmd>Yazi<CR>", "Show Yazi" },
  ["sr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  ["gr"] = { telescope.lsp_references, "Goto reference", mode = "n" },
  ["yf"] = {
    function()
      vim.ui.open(vim.fn.expand("%"))
    end,
    "Open current file",
  },
  ["gd"] = { telescope.lsp_definitions, "Goto definition", mode = "n" },
  ["rr"] = { "<cmd>RunCode<CR>", "Run Code line" },
  ["s'"] = { "<cmd>Telescope neoclip<CR>", "Clipboard History" },
  ["<leader>"] = { "<cmd>Telescope file_browser path=%:p:h select_buffer=true initial_mode=normal<CR>", "Find File" },
  ["sw"] = { telescope.live_grep, "Find Word" },
  [";"] = { "<cmd>Telescope buffers previewer=false<CR>", "Find buffers" },
  ["os"] = { "<cmd>ObsidianSearch<CR>", "Obsidian Search" },
  ["of"] = { "<cmd>ObsidianQuickSwitch<CR>", "Obsidian Files" },
  ["ol"] = { "<cmd>ObsidianLinks<CR>", "Obsidian Links" },
}
wk.register(mappings, { prefix = "<leader>" })
