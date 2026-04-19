local M = {}

function M.setup()
  if not (vim.lsp and vim.lsp.config and vim.lsp.enable) then
    return
  end

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  local ok_cmp_lsp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
  if ok_cmp_lsp then
    capabilities = cmp_lsp.default_capabilities(capabilities)
  end

  vim.diagnostic.config({
    virtual_text = true,
    underline = true,
    signs = true,
    update_in_insert = false,
  })

  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { silent = true, desc = "Previous diagnostic" })
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { silent = true, desc = "Next diagnostic" })
  vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { silent = true, desc = "Diagnostics to location list" })

  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
      local opts = { buffer = ev.buf, silent = true }

      -- Creator-style navigation keys, kept Telescope-free for minimalism.
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, { desc = "Go to definition" }))
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, vim.tbl_extend("force", opts, { desc = "Go to declaration" }))
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, vim.tbl_extend("force", opts, { desc = "Go to implementation" }))
      vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Hover" }))
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename symbol" }))
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code action" }))
      vim.keymap.set("n", "gl", vim.diagnostic.open_float, vim.tbl_extend("force", opts, { desc = "Line diagnostics" }))
    end,
  })

  if vim.fn.executable("clangd") == 1 then
    vim.lsp.config("clangd", {
      capabilities = capabilities,
    })
    vim.lsp.enable("clangd")
  else
    vim.schedule(function()
      vim.notify("clangd not found in PATH; C LSP is disabled.", vim.log.levels.WARN)
    end)
  end
end

return M
