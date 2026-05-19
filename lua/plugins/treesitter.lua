local M = {}

function M.setup()
  local ok, ts_configs = pcall(require, "nvim-treesitter.configs")
  if not ok then return end

  ts_configs.setup({
    ensure_installed = {
      "c",
      "lua",
      "query",
      "vim",
      "vimdoc",
    },
    sync_install = false,
    auto_install = false,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
  })
end

return M
