return {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
    event = 'VeryLazy',
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = {
            'astro',
            'bash',
            'css',
            'go',
            'html',
            'htmldjango',
            'javascript',
            'jsdoc',
            'json5',
            'lua',
            'luadoc',
            'php',
            'python',
            'ruby',
            'sql',
            'typescript',
            'vim',
            'vimdoc',
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
        textobjects = {
            select = {
                enable = true,
                lookahead = true,
                keymaps = {
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@conditional.outer',
                    ['ic'] = '@conditional.inner',
                    ['al'] = '@loop.outer',
                    ['il'] = '@loop.inner',
                }
            }
        },
    }
}
