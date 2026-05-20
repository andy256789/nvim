local M = {}

function M.setup()
  local ok, tokyonight = pcall(require, "tokyonight")
  if not ok then return end

  tokyonight.setup({
    style = "night",
    transparent = true,
  })

  local ok_cs = pcall(vim.cmd.colorscheme, "tokyonight")
  if not ok_cs then
    vim.cmd.colorscheme("default")
  end
end

return M
