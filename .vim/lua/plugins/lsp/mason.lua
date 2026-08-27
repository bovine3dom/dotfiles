-- ~/.config/nvim/lua/plugins/lsp/mason.lua

return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
--    'jay-babu/mason-null-ls.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = {
        'ts_ls',
        'pyright',
        'julials',
      },
    })
    require('mason-tool-installer').setup({
      ensure_installed = {
        "yapf",
      }
    })
  end,
}
