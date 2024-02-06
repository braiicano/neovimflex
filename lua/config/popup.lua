vim.cmd('highlight Found gui=underline ctermbg=156 ctermfg=16 guifg=NONE guibg=NONE')

function show_popup()
    local bufnr = vim.api.nvim_create_buf(false,true)
    local w, h = 40,1
    local pos = {
        x = math.floor((vim.api.nvim_get_option('lines')-h)/2),
        y = math.floor((vim.api.nvim_get_option('columns')-w)/2),
    }
    local opt = {
        relative = 'editor',
        width = w,
        height = h,
        style = 'minimal',
        border = {'.','.','.','.','.','.','.','.'},
        row = pos.x,
        col = pos.y,
        title = 'Search',
        title_pos = 'center',
        focusable = true,
    }
    vim.g.before_buf_id = vim.api.nvim_buf_get_number(0)
    local winnr = vim.api.nvim_open_win(bufnr, true, opt)
    vim.api.nvim_command('startinsert!')
    vim.api.nvim_buf_set_keymap(bufnr, 'i', '<CR>', [[<ESC>:lua search()<CR>]],{ noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, 'i', '<ESC>', [[<ESC>:lua vim.api.nvim_buf_delete(0,{ force=true })<CR>]],{ noremap = true, silent = true })

end

function search()
    local id = vim.g.before_buf_id
    local bufnr = vim.api.nvim_get_current_buf()
    local content = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
    local _line = ""
    for _, line in ipairs(content) do
        _line = line:gsub("(%w+)%s+(%w+)%s+(%w+)","%1/%2/%3")
    end
    vim.api.nvim_buf_delete(bufnr,{ force=true })
    vim.api.nvim_command('buffer '..id)
    print(_line)
    .api.nvim_command('s/'.._line)
end


vim.api.nvim_set_keymap('i','<A-/>',[[<ESC>:lua show_popup()<CR>]],{ noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<A-/>',[[:lua show_popup()<CR>]],{ noremap = true, silent = true })

