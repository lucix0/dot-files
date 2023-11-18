return {
    'nvim-tree/nvim-tree.lua',
    setup = {
        function ()
            local api = require('nvim-tree.api')
            vim.keymap.set('n', '<leader>tt', api.tree.toggle, opts('.'))
        end
    }
}
