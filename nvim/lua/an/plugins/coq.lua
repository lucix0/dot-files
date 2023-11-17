return {
    'ms-jpq/coq_nvim',
    dependencies = {
        'ms-jpq/coq.artifacts',
        'ms-jpq/coq.thirdparty',
        'neovim/nvim-lspconfig'
    },
    config = function ()
        local lsp = require "lspconfig"
        local coq = require "coq"
    
        lsp.pyright.setup{}
        lsp.lua_ls.setup{}
        lsp.clangd.setup{}
        lsp.rust_analyzer.setup{}
    end
}
