-- ~/.config/nvim/lua/plugins/lsp/lspconfig.lua

return {
  'neovim/nvim-lspconfig',
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local on_attach = function(client, bufnr)
      local bufmap = function(mode, lhs, rhs, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, lhs, rhs, opts)
      end

      bufmap('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to Definition' })
      bufmap('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Documentation' })
      bufmap('n', '<F2>', vim.lsp.buf.rename, { desc = 'Rename' })
      bufmap('n', ';f', vim.lsp.buf.format, { desc = 'Format Code' })
    end

    local servers = { 'ts_ls', 'pyright', 'julials' }
    for _, server in ipairs(servers) do
      vim.lsp.config(server, {
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end
    vim.lsp.enable(servers)
  end,
}
