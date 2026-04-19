local M = {}

function M.setup()
  local ok, cmp = pcall(require, "cmp")
  if not ok then
    return
  end

  cmp.setup({
    completion = {
      completeopt = "menu,menuone,noselect",
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "path" },
    }),
  })
end

return M
