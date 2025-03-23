vim.g.mapleader = " "
-- mb one day i'll use it:
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<C-h>", function()
    vim.cmd("split ~/.config/nvim/help.txt")
    vim.cmd("setlocal nomodifiable")
end)
