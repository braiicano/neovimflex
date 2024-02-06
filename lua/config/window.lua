local keymap = vim.api.nvim_set_keymap

--Window manager
--ADD POPUP FUNCTION

--Open window
keymap('n','<A-o>',':e <C-z>',{ noremap = true, silent = false })
keymap('i','<A-o>','<ESC>:e <C-z>',{ noremap = true, silent = false })

--Close window
keymap('n','<A-w>',':bd<CR>:echo "Buffer closed"<CR>',{ noremap = true, silent = true })
keymap('i','<A-w>','<ESC>:bd<CR>:echo "Buffer closed"<CR>',{ noremap = true, silent = true })

--Quit
keymap('n','<A-q>',':q<CR>',{ noremap = true })
keymap('i','<A-q>','<ESC>:q<CR>',{ noremap = true })

--Split window
keymap('n','<A-n>s',':split<CR>',{ noremap = true, silent = true })
keymap('i','<A-n>s','<ESC>:split<CR>',{ noremap = true, silent = true })

keymap('n','<A-n>v',':vsplit<CR>', { noremap = true, silent = true })
keymap('i','<A-n>v','<ESC>:vsplit<CR>', { noremap = true, silent = true })

--Vertical resize
keymap('n','<A-=>',':vertical resize +5<CR>',{ noremap = true, silent = true })
keymap('i','<A-=>','<ESC>:vertical resize +5<CR>',{ noremap = true, silent = true })

keymap('n','<A-->',':vertical resize -5<CR>',{ noremap = true, silent = true })
keymap('i','<A-->','<ESC>:vertical resize -5<CR>',{ noremap = true, silent = true })

--Horizontal resize
keymap('n','<A-+>',':resize +5<CR>',{ noremap = true, silent = true })
keymap('i','<A-+>','<ESC>:resize +5<CR>',{ noremap = true, silent = true })

keymap('n','<A-_>',':resize -3<CR>',{ noremap = true, silent = true })
keymap('i','<A-_>','<ESC>:resize -3<CR>',{ noremap = true, silent = true })

--Move cursor to up
keymap('i','<A-UP>','<ESC><C-w>ki',{ noremap = true, silent = true })
keymap('n','<A-UP>','<C-w>ki',{ noremap = true, silent = true })
--Move cursor to down
keymap('i','<A-DOWN>','<ESC><C-w>ji',{ noremap = true, silent = true })
keymap('n','<A-DOWN>','<C-w>ji',{ noremap = true, silent = true })
--Move cursor to left
keymap('i','<A-LEFT>','<ESC><C-w>hi',{ noremap = true, silent = true })
keymap('n','<A-LEFT>','<C-w>hi',{ noremap = true, silent = true })
--Move cursor to right
keymap('i','<A-RIGHT>','<ESC><C-w>li',{ noremap = true, silent = true })
keymap('n','<A-RIGHT>','<C-w>li',{ noremap = true, silent = true })


--Buffer manager
keymap('n','<A-,>',':bp<CR>',{ noremap = true, silent = true })
keymap('i','<A-,>','<ESC>:bp<CR>',{ noremap = true, silent = true })

keymap('n','<A-.>',':bn<CR>',{ noremap = true, silent = true })
keymap('i','<A-.>','<ESC>:bn<CR>',{ noremap = true, silent = true })

--Tab manager
keymap('n','<A-n>t',':tabnew <C-z>',{ noremap = true, silent = true })
keymap('i','<A-n>t','<ESC>:tabnew <C-z>',{ noremap = true, silent = true })

keymap('n','<A-<>',':tabp<CR>',{ noremap = true, silent = true })
keymap('i','<A-<>','<ESC>:tabp<CR>',{ noremap = true, silent = true })

keymap('n','<A->>',':tabn<CR>',{ noremap = true, silent = true })
keymap('i','<A->>','<ESC>:tabn<CR>',{ noremap = true, silent = true })
