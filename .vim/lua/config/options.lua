-- ~/.config/nvim/lua/config/options.lua

local opt = vim.opt

-- General
opt.mouse = 'a' -- Enable mouse support
-- opt.clipboard = 'unnamedplus' -- Use system clipboard

-- Numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Appearance
opt.termguicolors = true
opt.cursorline = true
opt.background = 'light'
opt.scrolloff = 15
opt.splitright = true
opt.linebreak = true
opt.breakindent = true
opt.showmode = false
opt.foldmethod = 'marker'

-- Behavior
opt.encoding = 'UTF-8'
opt.shell = vim.env.SHELL or '/bin/sh'
opt.autochdir = true
opt.tildeop = true
opt.wildmode = 'full'
opt.wildmenu = true
opt.grepprg = 'rg --vimgrep'

-- Persistent Undo
local undodir = vim.fn.stdpath('data') .. '/nvim_undodir'
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, 'p')
end
opt.undodir = undodir
opt.undofile = true
opt.undolevels = 1000
opt.undoreload = 10000

-- Obsidian needs this.
opt.conceallevel = 2

vim.api.nvim_set_hl(0, 'Normal', { ctermbg = 'NONE', bg = 'NONE' })
