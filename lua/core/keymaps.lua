local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end, { desc = "Source current file" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half-page down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half-page up and center" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without clobbering register" })
vim.keymap.set("v", "p", '"_dp', opts)
vim.keymap.set("n", "<leader>Y", [["+Y]], opts)
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "x", '"_x', opts)

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer" })
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
  desc = "Substitute word under cursor globally",
})

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current file in new tab" })

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize splits" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })

vim.keymap.set("n", "<leader>fp", function()
  local file_path = vim.fn.expand("%:~")
  vim.fn.setreg("+", file_path)
  print("File path copied: " .. file_path)
end, { desc = "Copy file path" })
