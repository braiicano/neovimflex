local tree = vim.api.nvim_set_keymap

--Toggle explorer
function TreeOpen()
    local list_buffers = vim.api.nvim_list_bufs()
    local buf_id = nil

    for _, id in ipairs(list_buffers) do
        local buftype = vim.api.nvim_buf_get_option(id, 'filetype')
        if buftype == 'netrw' then
            buf_id = id
        end
    end

    if buf_id then
        vim.api.nvim_set_current_buf(buf_id)
        vim.api.nvim_command(':bd')
        print('Explorer closed.')
    else
        vim.api.nvim_command(':Lexplore')
        vim.api.nvim_command(':vertical resize 30')
    end
end


tree('n','<C-b>',[[:lua TreeOpen()<CR>]],{ noremap = true, silent = true })
tree('i','<C-b>',[[<ESC>:lua TreeOpen()<CR>]],{ noremap = true, silent = true })
