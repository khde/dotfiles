vim.cmd("set nocompatible")
vim.cmd("set backspace=indent,eol,start")
vim.cmd("set updatetime=100")
vim.cmd("set history=50")
vim.cmd("set lazyredraw")

-- Indent
vim.cmd("set expandtab")
vim.cmd("set autoindent")
vim.cmd("set smartindent")
vim.cmd("set smarttab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Search
vim.cmd("set hlsearch")
vim.cmd("set incsearch")
-- vim.cmd("set ignorecase")

-- Text
vim.cmd("set linebreak")
vim.cmd("set encoding=utf-8")
vim.cmd("set showmatch")
vim.cmd("set signcolumn=auto")

-- Surface
vim.cmd("set number")
vim.cmd("set ruler")
vim.cmd("set colorcolumn=100")
vim.cmd("set cursorline")

-- Backup
vim.cmd("set noswapfile")
vim.cmd("set nobackup")
vim.cmd("set nowritebackup")

-- Hotkeys
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true, silent = true })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup("plugins")

