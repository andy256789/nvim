local M = {}

function M.setup()
  local ok, oil = pcall(require, "oil")
  if not ok then return end

  oil.setup({
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
    skip_confirm_for_simple_edits = true,
    delete_to_trash = false,
    keymaps = {
      ["<C-c>"] = false,
      ["q"] = "actions.close",
      ["<C-r>"] = "actions.refresh",
    },
  })

  vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory" })
  vim.keymap.set("n", "<leader>-", oil.toggle_float, { desc = "Toggle Oil float" })
end

return M
