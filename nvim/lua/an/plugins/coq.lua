return {
    'ms-jpq/coq_nvim',
    branch = 'coq',
    dependencies = {
        { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
        { 'ms-jpq/coq.thirdparty', branch = '3p' },
        { 'neovim/nvim-lspconfig', branch = 'master' }
    },
    config = function ()
        local lspconfig = require "lspconfig"

        local bufopts = { noremap = true, silent = true, buffer = 0 }
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)

        local servers = { "pyright", "lua_ls", "clangd" }
        for _, lsp in pairs(servers) do
            lspconfig[lsp].setup({
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"},
                        }
                    }
                }
            })
        end
   end
}
