local null_ls = require("null-ls")

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
        null_ls.builtins.formatting.black,
    }
})
