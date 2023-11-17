return {
    "williamboman/mason.nvim",
    branch = 'main',
    dependencies = {
        { "williamboman/mason-lspconfig.nvim", branch = 'main' },
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup()
    end
}
