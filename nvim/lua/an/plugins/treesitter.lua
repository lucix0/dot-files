return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "rust", "python" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
            }
        })
    end
}
