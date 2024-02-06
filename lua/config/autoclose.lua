--Autoclose tag

vim.api.nvim_set_keymap('i','"','""<LEFT>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('i','`','``<LEFT>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('i',"'","''<LEFT>",{ noremap = true, silent = true })
vim.api.nvim_set_keymap('i','(','()<LEFT>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('i','[','[]<LEFT>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('i','{','{}<LEFT>',{ noremap = true, silent = true })
vim.api.nvim_set_keymap('i','<','<><LEFT>',{ noremap = true, silent = true })

