vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Vexplore)
vim.keymap.set("n", "<leader>E", vim.cmd.Explore)

vim.keymap.set("n", "<leader>n", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>v", vim.cmd.vsplit)

vim.keymap.set("n", "<leader>gg", vim.cmd.Git)
-- TODO figure out how to set this up
-- vim.keymap.set("n", "<leader>gp", vim.cmd.Gitpush)

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>t", vim.cmd.terminal)

-- open terminal in a split + in a popup/hover window
-- vim.keymap.set("n", "<leader>t", vim.cmd.terminal)
-- vim.keymap.set("n", "<leader>t", vim.cmd.terminal)
