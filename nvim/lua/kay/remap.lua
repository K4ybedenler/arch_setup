vim.g.mapleader = " "
-- mb one day i'll use it:
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", '<cmd>wincmd h<cr>')
vim.keymap.set("n", "<leader>j", '<cmd>wincmd j<cr>')
vim.keymap.set("n", "<leader>k", '<cmd>wincmd k<cr>')
vim.keymap.set("n", "<leader>l", '<cmd>wincmd l<cr>')
vim.keymap.set("n", "<C-q>", '<cmd>q<cr>')
vim.keymap.set("n", "<C-M-q>", '<cmd>qall<cr>')
vim.keymap.set("n", "<C-M-t>", '<cmd>botright 10split | terminal<cr>')
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", function()
    vim.cmd("split ~/.config/nvim/help.md")
    vim.cmd("setlocal nomodifiable")
end)
