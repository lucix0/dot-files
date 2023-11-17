return {
    'ms-jpq/coq_nvim',
    branch = 'coq',
    dependencies = {
        { 'ms-jpq/coq.artifacts', branch = 'artifacts' },
        { 'ms-jpq/coq.thirdparty', branch = '3p' },
        { 'neovim/nvim-lspconfig', branch = 'master' }
    },
    config = function ()
        local lsp = require "lspconfig"

        lsp.pyright.setup{}
        lsp.lua_ls.setup{}
        lsp.clangd.setup{}
        lsp.rust_analyzer.setup{}
    end
}
