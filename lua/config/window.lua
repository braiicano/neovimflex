local keymap = vim.api.nvim_set_keymap

--Window manager
--ADD POPUP FUNCTION

--Open window
keymap('n','<A-o>',':e <C-z>',{ noremap = true, silent = false, desc = 'Open file' })
keymap('i','<A-o>','<ESC>:e <C-z>',{ noremap = true, silent = false, desc = 'Open file' })

--Close window
keymap('n','<A-w>',':bd<CR>:echo "Buffer closed"<CR>',{ noremap = true, silent = true, desc = 'Close buffer' })
keymap('i','<A-w>','<ESC>:bd<CR>:echo "Buffer closed"<CR>',{ noremap = true, silent = true, desc = 'Close buffer' })

--Quit
keymap('n','<A-q>',':q<CR>',{ noremap = true, desc = 'Close neovim' })
keymap('i','<A-q>','<ESC>:q<CR>',{ noremap = true, desc = 'Close neovim' })

--Split window
keymap('n','<A-n>s',':split<CR>',{ noremap = true, silent = true, desc = 'Split window' })
keymap('i','<A-n>s','<ESC>:split<CR>',{ noremap = true, silent = true, desc = 'Split window' })

keymap('n','<A-n>v',':vsplit<CR>', { noremap = true, silent = true, desc = 'Split window vertical' })
keymap('i','<A-n>v','<ESC>:vsplit<CR>', { noremap = true, silent = true, desc = 'Splic window vertical' })

--Vertical resize
keymap('n','<A-=>',':vertical resize +5<CR>',{ noremap = true, silent = true, desc = 'Resize width +' })
keymap('i','<A-=>','<ESC>:vertical resize +5<CR>',{ noremap = true, silent = true,  desc = 'Resize width +'})

keymap('n','<A-->',':vertical resize -5<CR>',{ noremap = true, silent = true, desc = 'Resize width -' })
keymap('i','<A-->','<ESC>:vertical resize -5<CR>',{ noremap = true, silent = true, desc = 'Resize width -' })

--Horizontal resize
keymap('n','<A-+>',':resize +5<CR>',{ noremap = true, silent = true, desc = 'Resize height +' })
keymap('i','<A-+>','<ESC>:resize +5<CR>',{ noremap = true, silent = true, desc = 'Resize height +' })

keymap('n','<A-_>',':resize -3<CR>',{ noremap = true, silent = true, desc = 'Resize height -' })
keymap('i','<A-_>','<ESC>:resize -3<CR>',{ noremap = true, silent = true, desc = 'Resize height -' })

--Move cursor to up
keymap('i','<A-UP>','<ESC><C-w>ki',{ noremap = true, silent = true, desc = 'Move to up window' })
keymap('n','<A-UP>','<C-w>ki',{ noremap = true, silent = true, desc = 'Move to up window' })
--Move cursor to down
keymap('i','<A-DOWN>','<ESC><C-w>ji',{ noremap = true, silent = true, desc = 'Move to down window' })
keymap('n','<A-DOWN>','<C-w>ji',{ noremap = true, silent = true, desc = 'Move to down window' })
--Move cursor to left
keymap('i','<A-LEFT>','<ESC><C-w>hi',{ noremap = true, silent = true, desc = 'Move to left window' })
keymap('n','<A-LEFT>','<C-w>hi',{ noremap = true, silent = true, desc = 'Move to left window' })
--Move cursor to right
keymap('i','<A-RIGHT>','<ESC><C-w>li',{ noremap = true, silent = true, desc = 'Move to right window' })
keymap('n','<A-RIGHT>','<C-w>li',{ noremap = true, silent = true, desc = 'Move to right window' })


--Buffer manager
keymap('n','<A-,>',':bp<CR>',{ noremap = true, silent = true, desc = 'View next buffer' })
keymap('i','<A-,>','<ESC>:bp<CR>',{ noremap = true, silent = true, desc = 'View next buffer' })

keymap('n','<A-.>',':bn<CR>',{ noremap = true, silent = true, desc = 'View previous buffer' })
keymap('i','<A-.>','<ESC>:bn<CR>',{ noremap = true, silent = true, desc = 'View previous buffer' })

--Tab manager
keymap('n','<A-n>t',':tabnew <C-z>',{ noremap = true, silent = true, desc = 'Open new tab' })
keymap('i','<A-n>t','<ESC>:tabnew <C-z>',{ noremap = true, silent = true, desc = 'Open new tab' })

keymap('n','<A-<>',':tabp<CR>',{ noremap = true, silent = true, desc = 'View previous tab' })
keymap('i','<A-<>','<ESC>:tabp<CR>',{ noremap = true, silent = true, desc = 'View previous tab' })

keymap('n','<A->>',':tabn<CR>',{ noremap = true, silent = true, desc = 'View next tab' })
keymap('i','<A->>','<ESC>:tabn<CR>',{ noremap = true, silent = true, desc = 'View next tab' })
