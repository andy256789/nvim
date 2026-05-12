local M = {}

function M.setup()
  local ok, conform = pcall(require, "conform")
  if not ok then
    return
  end

  conform.setup({
    formatters_by_ft = {
      -- Use clang-format for C and C++
      c = { "clang-format" },
      cpp = { "clang-format" },
    },
    formatters = {
      ["clang-format"] = {
        -- Set a fallback style for when there is no .clang-format file in your project.
        -- "Microsoft" or "WebKit" are closer to 4-space indent styles, 
        -- or you can define an explicit fallback string.
        prepend_args = { "-fallback-style=Microsoft" },
      },
    },
    -- Optional: uncomment to format on save
    -- format_on_save = {
    --   timeout_ms = 500,
    --   lsp_format = "fallback",
    -- },
  })

  -- Override the default formatter keybind to use conform
  vim.keymap.set({ "n", "v" }, "<leader>f", function()
    conform.format({
      lsp_format = "fallback",
      timeout_ms = 500,
    })
  end, { desc = "Format buffer (conform)" })
end

return M
