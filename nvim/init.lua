-- Vim Config
vim.cmd([[
    set nocompatible            " disable compatibility to old-time vi
    set showmatch               " show matching 
    set ignorecase              " case insensitive  
    set hlsearch                " highlight search 
    set incsearch               " incremental search
    set tabstop=4               " number of columns occupied by a tab 
    set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
    set expandtab               " converts tabs to white space
    set shiftwidth=4            " width for autoindents
    set autoindent              " indent a new line the same amount as the line just typed
    set number                  " add line numbers
    set wildmode=longest,list   " get bash-like tab completions
    set cc=80                  " set an 80 column border for good coding style
    filetype plugin indent on   "allow auto-indenting depending on file type
    syntax on                   " syntax highlighting
    set mouse=a                 " enable mouse click
    set clipboard=unnamedplus   " using system clipboard
    filetype plugin on
    set cursorline              " highlight current cursorline
    set ttyfast
]])

-- Vim keymaps
-- Tab switching
vim.keymap.set('n', '<leader>,', ':tabprevious<CR>', { silent = true })
vim.keymap.set('n', '<leader>.', ':tabnext<CR>',     { silent = true })

-- Lazy Plugin Manager Bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("an.plugins")
