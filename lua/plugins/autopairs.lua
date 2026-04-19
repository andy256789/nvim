local M = {}

function M.setup()
  local ok_pairs, autopairs = pcall(require, "nvim-autopairs")
  if not ok_pairs then
    return
  end

  autopairs.setup({
    check_ts = true,
  })

  local ok_cmp, cmp = pcall(require, "cmp")
  if not ok_cmp then
    return
  end

  local ok_cmp_pairs, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
  if ok_cmp_pairs then
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end
end

return M
