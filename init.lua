--Add Lua path
vim.o.runtimepath = vim.o.runtimepath .. ',' .. '~/.config/nvim/lua'

--Default settings
require('config.settings')

--Keymaps
require('config.keymap')

--Buffer and window manager
require('config.window')

--Tree explorer
require('config.tree')

--Autoclose tags
require('config.autoclose')

--Functions
require('function.shorthand')

--Plugins / Lazy
require('config.lazy')
