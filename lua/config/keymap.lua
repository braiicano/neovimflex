--Keymaps
local keymap = vim.api.nvim_set_keymap
--function(mode, keymap, command, instruction)

--Change mode

keymap('n','<C-SPACE>','i',{ noremap = true })
keymap('i','<C-SPACE>','<ESC>V',{ noremap = true })
keymap('v','<C-SPACE>','<ESC>',{ noremap = true })
--keymap('i','','<ESC>',{ noremap = true })

--Save current file
keymap('n','<C-s>',':w<CR>',{ noremap = true, silent = true })
keymap('i','<C-s>','<ESC>:w<CR>a',{ noremap = true})

--Comment line
keymap('n','<C-#>',':Commentary<CR>',{ noremap = true, silent = true })
keymap('i','<C-#>','<ESC>:Commentary<CR>a',{ noremap = true, silent = true })

--Redo action
keymap('i','<C-r>','<ESC><C-R>a',{ noremap = true, silent = true})

--Undo action
keymap('i','<C-u>','<ESC>ua',{ noremap = true, silent = true})

--Delete line
keymap('i','<C-x>','<ESC>dda',{ noremap = true, silent = true })

--Copy line
keymap('n','<C-c>','yy',{ noremap = true })
keymap('i','<C-c>','<ESC>yya',{ noremap = true })
keymap('v','<C-c>','yya',{ noremap = true })

--Paste line
keymap('n','<C-v>','pa',{ noremap = true })
keymap('i','<C-v>','<ESC>pa',{ noremap = true })

--New line
keymap('i','<M-Enter>','<ESC>o',{ noremap = true })

--Move line
keymap('i','<S-UP>','<ESC>ddkPa',{ noremap = true })
keymap('i','<S-DOWN>','<ESC>ddpa',{ noremap = true })

--Terminal mode
keymap('t','<C-Space>','<C-\\><C-n>',{ noremap = true })

--Change <c-x><c-o> omnifuc
keymap('i','<A-/>','<c-x><c-o>',{ noremap = true })
