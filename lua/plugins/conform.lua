local M = {}

function M.setup()
  local ok, conform = pcall(require, "conform")
  if not ok then return end

  conform.setup({
    formatters_by_ft = {
      c = { "clang-format" },
      cpp = { "clang-format" },
    },
    formatters = {
      ["clang-format"] = {
        prepend_args = { "-fallback-style={BasedOnStyle: Microsoft, IndentWidth: 4}" },
      },
    },
    -- Optional: uncomment to format on save
    -- format_on_save = {
    --   timeout_ms = 500,
    --   lsp_format = "fallback",
    -- },
  })

  vim.keymap.set({ "n", "v" }, "<leader>f", function()
    conform.format({
      lsp_format = "fallback",
      timeout_ms = 500,
    })
  end, { desc = "Format buffer (conform)" })
end

return M
