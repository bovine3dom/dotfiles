-- ~/.config/nvim/lua/config/autocmds.lua

local api = vim.api

-- Automatically set spell for diary files
api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = vim.fn.expand('~/Dropbox') .. '/diary*',
  command = 'setlocal spell',
})

-- Make scripts executable on save
api.nvim_create_autocmd('BufWritePost', {
  pattern = '*',
  callback = function(args)
    if vim.fn.getline(1):match('^#!') then
      vim.fn.system({ 'chmod', '+x', vim.api.nvim_buf_get_name(args.buf) })
    end
  end,
})

-- Set spell for markdown files
api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.md',
  command = 'setlocal spell',
})

-- Format options for mail filetype
api.nvim_create_autocmd('FileType', {
  pattern = 'mail',
  callback = function()
    vim.keymap.set('i', '<CR>', '<ESC>gqqo', { buffer = true })
    vim.opt_local.formatprg = 'par -w65 -j1'
    vim.opt_local.textwidth = 0
  end,
})

-- Set spell for tex files
api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.tex',
  command = 'setlocal spell',
})

api.nvim_create_autocmd({ 'TermOpen' }, {
  pattern = 'term://*',
  callback = function()
    if vim.fn.exists(':SendHere') == 2 then
      vim.cmd.SendHere()
    end
  end,
})
