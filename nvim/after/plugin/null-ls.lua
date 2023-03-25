local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.eslint_d,
        null_ls.builtins.diagnostics.actionlint,
        null_ls.builtins.diagnostics.checkmake,
        null_ls.builtins.diagnostics.chktex,
        null_ls.builtins.diagnostics.curlylint,
        null_ls.builtins.diagnostics.dotenv_linter,
        null_ls.builtins.diagnostics.markdownlint,
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.diagnostics.vint,
        null_ls.builtins.diagnostics.todo_comments,
        null_ls.builtins.diagnostics.trail_space,
        null_ls.builtins.formatting.trim_whitespace,
        null_ls.builtins.formatting.trim_newlines,
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.pylint,
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    --vim.lsp.buf.formatting_sync()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})
