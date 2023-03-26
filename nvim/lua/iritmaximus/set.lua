vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
-- vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
vim.opt.guicursor = "n-v-c-sm:hor1,i-ci-ve:ver25,r-cr-o:hor20"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 0
vim.opt.signcolumn = "auto"

vim.opt.updatetime = 50

-- netrw things to make it like nerdtree
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 15
vim.g.netrw_browse_split = 4

vim.cmd.colorscheme("rose-pine")

vim.opt.clipboard = "unnamedplus"
