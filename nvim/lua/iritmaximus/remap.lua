vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Vexplore)
vim.keymap.set("n", "<leader>E", vim.cmd.Explore)

vim.keymap.set("n", "<leader>n", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)

vim.keymap.set("n", "<leader>gg", vim.cmd.Git)
-- TODO figure out how to set this up
-- vim.keymap.set("n", "<leader>gp", vim.cmd.Gitpush)
