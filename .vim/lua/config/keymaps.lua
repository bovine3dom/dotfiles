-- ~/.config/nvim/lua/config/keymaps.lua

local keymap = vim.keymap.set

-- Clear search highlighting
keymap('n', '<leader><space>', ':nohlsearch<CR>', { silent = true, noremap = true })

-- UndoTree
keymap('n', '<F4>', ':UndotreeToggle<CR>:UndotreeFocus<CR>', { silent = true, noremap = true })

-- Tmux-style zoom
keymap('n', '<C-W>z', ':tabnew %<CR>', { silent = true, noremap = true })

-- Rename all occurrences of word under cursor
-- keymap('n', 'cI', '*:%s//', { silent = false, noremap = true, expr = false, remap = false, default = false, callback = nil, desc = nil })

-- Yank to end of line
keymap('n', 'Y', 'y$', { silent = true, noremap = true })

-- EasyMotion-like keymap (using flash.nvim)
-- Flash will be our modern replacement for easymotion
-- You can still use ',' as a prefix for motions.
-- For example, ',s' to search forward.

-- Fuzzy find keymaps with Telescope
keymap('n', ';o', '<cmd>Telescope find_files<cr>', { desc = "Find Files" })
keymap('n', ';go', '<cmd>Telescope git_files<cr>', { desc = "Find Git Files" })
keymap('n', ';c', '<cmd>Telescope git_bcommits<cr>', { desc = "Buffer Commits" })
keymap('n', ';r', '<cmd>Telescope oldfiles<cr>', { desc = "Recent Files" })
keymap('n', '<leader>tt', '<Plug>SendLine')
keymap('v', '<leader>t', '<Plug>Send')
keymap('n', '<leader>t', '<Plug>Send')

-- Quit command line window
keymap('c', 'q:', '<C-u>q', { silent = true, noremap = true })

keymap('t', '<C-W><S-N>', '<C-\\><C-N>')
