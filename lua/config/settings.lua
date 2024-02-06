--Settings
local opt = vim.o
local cmd = vim.cmd
local exec = vim.api.nvim_exec

--Basic config
opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.wrap = true
vim.api.nvim_set_option('clipboard','unnamed')

--Update source
vim.api.nvim_set_keymap('n','<F5>',':so %<CR>:echo "Updated!"<CR>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('i','<F5>','<ESC>:so %<CR>:echo "Updated!"<CR>i',{ noremap = true, silent = true })

--Highlight syntax
cmd('syntax enable')
--opt.background = 'dark'
--cmd('colorscheme slate')

--Search config
opt.incsearch = true
opt.hlsearch = true
opt.smartcase = true
opt.ignorecase = true

--Autocomplete
opt.completeopt = 'menuone,noselect'
vim.bo.dictionary = vim.bo.dictionary .. ',' .. 'usr/share/dict/words'

