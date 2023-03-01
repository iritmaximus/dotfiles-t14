local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp", dup = 0 },
        { name = "nvim_lua", dup = 0 },
        { name = "path", dup = 0 },
        { name = "buffer", keyword_length = 2, dup = 0 },
    }),
    completion = {
        keyword_length = 1,
        completeopt = "menu,noselect"
    },
    view = {
        entries = "custom"
    },
    formatting = {
        format = lspkind.cmp_format({
            nvim_lsp = "[LSP]",
            nvim_lua = "[Lua]",
            path = "[Path]",
            buffer = "[Buffer]",
        })
    }
})

