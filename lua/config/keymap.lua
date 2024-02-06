--Keymaps
local keymap = vim.keymap.set
--function(mode, keymap, command, instruction)

--Change mode

keymap('n','<C-SPACE>','i',{ noremap = true, desc = 'Change to Insert mode' })
keymap('i','<C-SPACE>','<ESC>V',{ noremap = true, desc = 'Change to VisualBlock mode' })
keymap('v','<C-SPACE>','<ESC>',{ noremap = true, desc = 'Change to Normal mode' })
keymap('i','<C-q>','<ESC>',{ noremap = true, desc = 'Change to Normal mode' })

--Save current file
keymap('n','<C-s>',':w<CR>',{ noremap = true, silent = true, desc = 'Save current file' })
keymap('i','<C-s>','<ESC>:w<CR>a',{ noremap = true, desc = 'Save current file' })

--Comment line
keymap('n','<C-#>',':Commentary<CR>',{ noremap = true, silent = true })
keymap('i','<C-#>','<ESC>:Commentary<CR>a',{ noremap = true, silent = true })

--Redo action
keymap('i','<C-r>','<ESC><C-R>a',{ noremap = true, silent = true, desc = 'Redo into Insert mode' })

--Undo action
keymap('i','<C-u>','<ESC>ua',{ noremap = true, silent = true, desc = 'Undo into Insert mode' })

--Delete line
keymap('i','<C-x>','<ESC>dda',{ noremap = true, silent = true, desc = 'Cut current line into Insert mode' })

--Copy line
keymap('n','<C-c>','yy',{ noremap = true, desc = 'Copy current line into Normal mode' })
keymap('i','<C-c>','<ESC>yya',{ noremap = true, desc = 'Copy current line into Insert mode' })
keymap('v','<C-c>','yya',{ noremap = true, desc = 'Copy select cursor into Visual mode' })

--Paste line
keymap('n','<C-v>','pa',{ noremap = true, desc = 'Paste last register into Normal mode' })
keymap('i','<C-v>','<ESC>pa',{ noremap = true, desc = 'Paste last register into Insert mode' })

--New line
keymap('i','<M-Enter>','<ESC>o',{ noremap = true, desc = 'Insert new line after current line' })
keymap('i','<C-Enter>','<ESC>O',{ noremap = true, desc = 'Insert new line before current line' })

--Move line
keymap('i','<S-UP>','<ESC>ddkPa',{ noremap = true, desc = 'Move current line to up' })
keymap('i','<S-DOWN>','<ESC>ddpa',{ noremap = true, desc = 'Move current line to down' })

--Terminal mode
keymap('t','<C-Space>','<C-\\><C-n>',{ noremap = true, desc = 'Change to Normal mode into Terminal mode' })

--Change <c-x><c-o> omnifuc
keymap('i','<A-/>','<c-x><c-o>',{ noremap = true, desc = 'Active omnifunc' })

--Tab shorthand
keymap('v','>','>gv',{ desc = 'Tab in and reselect'})
keymap('v','<','<gv',{ desc = 'Tab out and reselect'})

--Position cursor into middle when search
keymap('n','n','nzzzv', { desc = 'Goes to the next result' })
keymap('n','N','Nzzzv', { desc = 'Goes to the previous result' })
