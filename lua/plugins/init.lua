-- Keep this list intentionally small; we add one essential plugin at a time.
vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/folke/tokyonight.nvim",
  "https://github.com/hrsh7th/nvim-cmp",
  "https://github.com/hrsh7th/cmp-nvim-lsp",
  "https://github.com/hrsh7th/cmp-buffer",
  "https://github.com/hrsh7th/cmp-path",
  "https://github.com/windwp/nvim-autopairs",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
  "https://github.com/mbbill/undotree",
  "https://github.com/stevearc/conform.nvim",
})

require("plugins.colorscheme").setup()
require("plugins.treesitter").setup()
require("plugins.lsp").setup()
require("plugins.oil").setup()
require("plugins.cmp").setup()
require("plugins.autopairs").setup()
require("plugins.telescope").setup()
require("plugins.undotree").setup()
require("plugins.conform").setup()
