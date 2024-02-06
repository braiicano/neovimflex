return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'folke/neodev.nvim'
  },
  config = function()
    vim.keymap.set('n', '<Space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', 'n', vim.diagnostic.goto_next)
    vim.keymap.set('n', 'N', vim.diagnostic.goto_prev)
    vim.keymap.set('n', '<Space>els', vim.diagnostic.setloclist)

    local on_attach = function(_, bufnr)
      vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
      local opts = { buffer = bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      vim.keymap.set({ 'n', 'i' }, '<C-k>', vim.lsp.buf.hover, opts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      vim.keymap.set({ 'n', 'v' }, '<S-Space>', vim.lsp.buf.code_action, opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      vim.keymap.set('n', '<C-f>', function()
        vim.lsp.buf.format { async = true }
      end, opts)
    end
    require('neodev').setup()
    local lspconfig = require('lspconfig')
    lspconfig.lua_ls.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        },
      },
    })
    lspconfig.astro.setup({})
    lspconfig.bashls.setup({})
    lspconfig.html.setup({})
    lspconfig.jedi.setup({
      on_attach = on_attach,
      settings = {
        telemetry = { enable = false }
      }
    })
    lspconfig.ruby_ls.setup({})
    lspconfig.tsserver.setup({})
    lspconfig.vimls.setup({})
  end
}
