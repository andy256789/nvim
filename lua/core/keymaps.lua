vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader><leader>", "<C-w>w", { desc = "Switch to next window split" })

vim.keymap.set("x", "p", [["_dP]], { desc = "Paste without clobbering register" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

vim.keymap.set("v", "<", "<gv", { silent = true })
vim.keymap.set("v", ">", ">gv", { silent = true })

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half-page down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half-page up and center" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Substitute word under cursor globally" })

vim.keymap.set("n", "<leader>Y", [["+Y]], { silent = true })
vim.keymap.set({ "n", "x" }, "x", '"_x', { silent = true, desc = "Delete char without yanking" })

vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", { desc = "Toggle Undotree" })

vim.keymap.set("i", "<Tab>", function()
  if vim.fn.pumvisible() == 1 then
    if vim.fn.complete_info({ "selected" }).selected == -1 then
      return "<C-n><C-y>"
    end
    return "<C-y>"
  end
  return "<Tab>"
end, { expr = true, replace_keycodes = true, desc = "Accept completion" })
vim.keymap.set("n", "Q", "<nop>")

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

-- Only for Windows development:

vim.keymap.set("n", "<leader>b", function()
    vim.cmd("write")
    local build_script = vim.fn.findfile("build.bat", ".;")
    if build_script == "" then
        print("Error: Could not find build.bat in this or any parent directory!")
        return
    end
    -- Convert forward slashes to backslashes and wrap in cmd /c
    local build_path = vim.fn.fnamemodify(build_script, ":p"):gsub("/", "\\")
    vim.cmd('!' .. 'cmd /c "' .. build_path .. '"')
end, { desc = "Smart Build Handmade" })
