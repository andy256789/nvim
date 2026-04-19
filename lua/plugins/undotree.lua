local M = {}

function M.setup()
  vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle UndoTree" })
end

return M
