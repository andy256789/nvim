-- Keep this list intentionally small; we add one essential plugin at a time.
vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/folke/tokyonight.nvim",
  "https://github.com/windwp/nvim-autopairs",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
  "https://github.com/stevearc/conform.nvim",
  "https://github.com/folke/which-key.nvim",
})

require("plugins.lsp").setup()
require("plugins.oil").setup()
require("plugins.colorscheme").setup()
require("plugins.treesitter").setup()
require("plugins.autopairs").setup()
require("plugins.telescope").setup()
require("plugins.conform").setup()
require("plugins.which-key").setup()
