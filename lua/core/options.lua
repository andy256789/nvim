vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = false
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse = "a"
vim.opt.clipboard:append("unnamedplus")

vim.opt.updatetime = 50
vim.opt.isfname:append("@-@")
vim.opt.colorcolumn = "80"

vim.opt.complete:append("o")
vim.opt.completeopt = { "menuone", "noinsert" }
vim.o.autocomplete = true
vim.o.pumheight = 5

vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
  desc = "Highlight when yanking",
  callback = function()
    vim.hl.on_yank()
  end,
})
