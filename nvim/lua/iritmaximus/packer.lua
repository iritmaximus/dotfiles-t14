-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })
    use 'sainnhe/everforest'

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'airblade/vim-gitgutter'

    use 'hrsh7th/nvim-cmp'
    use 'onsails/lspkind.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'tpope/vim-fugitive'

    use 'nvim-orgmode/orgmode'
    use 'windwp/nvim-autopairs'
end)
