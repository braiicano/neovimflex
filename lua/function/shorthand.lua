function Save(name)
    local dir = vim.fn.getcwd()
    vim.api.nvim_command(':w '..name)
    print('File saved in: ',dir)
end

function Rename(name)
    local old_name = vim.fn.expand('%:t')
    vim.api.nvim_command(':!mv '.. old_name .. ' ' .. name)
    print('File renamed in: ', vim.fn.getcwd())
end

function Delete(name)
    vim.api.nvim_command(':!rm '.. name)
    print('File '..name..' has been removed')
end

function Create(name)
    vim.api.nvim_command(':!touch '.. name)
    vim.api.nvim_command(':e '.. name)
    print('Open ' .. name .. ' into new buffer')
end
