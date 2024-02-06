--Settings
local opt = vim.o
local cmd = vim.cmd
local exec = vim.api.nvim_exec

--Basic config
vim.g.mapleader = ","
opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.wrap = true
opt.termguicolors = true
vim.api.nvim_set_option('clipboard', 'unnamed')

--Update source
vim.api.nvim_set_keymap('n', '<F5>', ':so %<CR>:echo "Updated!"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<F5>', '<ESC>:so %<CR>:echo "Updated!"<CR>i', { noremap = true, silent = true })

--Highlight syntax
cmd('syntax enable')
--opt.background = 'dark'
--cmd('colorscheme slate')

--Search config
opt.incsearch = true
opt.hlsearch = true
opt.smartcase = true
opt.ignorecase = true

--Load Emmet
require('config.plugin.emmet')

--Autoinstaller
function Installer()
  vim.fn.system({
    'sudo',
    'npm',
    'i',
    '-g',
    'live-server',
    'bash-language-server',
    'vscode-langservers-extracted',
  })
  vim.fn.system({
    'pip',
    'install',
    '-U',
    'jedi-language-server'
  })
end
