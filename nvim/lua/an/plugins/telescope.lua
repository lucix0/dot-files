return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        { 'nvim-telescope/telescope-file-browser.nvim', branch = 'master' },
        { 'nvim-lua/plenary.nvim',                      branch = 'master' },
        { 'nvim-telescope/telescope-fzf-native.nvim',   branch = 'main'   },
        { 'BurntSushi/ripgrep',                         branch = 'master' },
        { 'nvim-tree/nvim-web-devicons',                branch = 'master' }
    },
    config = function ()
        -- Imports
        local builtin    = require('telescope.builtin')
        local ts         = require('telescope')
        local fb_actions = ts.extensions.file_browser.actions

        -- Keymap
        vim.keymap.set('n', '<leader>ff', builtin.find_files,            {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep,             {})
        vim.keymap.set('n', '<leader>fb', ':Telescope file_browser<CR>', {})

        -- Setup
        ts.setup {
            extensions = {
                file_browser = {
                    hijack_netrw = true,
                }
            }
        }

        -- Load extensions
        ts.load_extension('file_browser')
    end
}
