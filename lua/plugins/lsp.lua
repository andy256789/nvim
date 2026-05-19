local M = {}

function M.setup()
  vim.lsp.enable({ "clangd", "lua_ls" })

  vim.diagnostic.config({
    float = { border = "rounded" },
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
  })

  vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Diagnostics to loclist" })
  vim.keymap.set("n", "<leader>rn",  vim.lsp.buf.rename, { desc = "Rename" })

end

return M
