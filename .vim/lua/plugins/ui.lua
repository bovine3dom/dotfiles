-- ~/.config/nvim/lua/plugins/ui.lua

return {
  -- Colorscheme
  --{
  --    'flazz/vim-colorschemes',
  --    lazy = false,
  --    config = function()
  --        --vim.opt.background = 'light'
  --        -- vim.cmd.colorscheme 'habiLight'
  --        vim.cmd.colorscheme 'hornet'
  --    end,
  --},

  -- Statusline
  -- {
  --   'nvim-lualine/lualine.nvim',
  --   dependencies = { 'nvim-tree/nvim-web-devicons' },
  --   config = function()
  --     require('lualine').setup({
  --       options = {
  --         theme = 'ayu_dark',
  --         -- theme = 'ayu_light',
  --         -- Or use your preferred airline theme
  --         -- A list of themes is available at:
  --         -- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
  --         -- For example: theme = 'solarized'
  --       },
  --       sections = {
  --         lualine_c = { 'filename', 'diagnostics' },
  --         lualine_x = { 'filetype' },
  --       },
  --     })
  --   end,
  -- },
  'vim-airline/vim-airline',
  -- 'vim-airline/vim-airline-themes',

  -- Distraction-free mode
  {
    'junegunn/goyo.vim',
    config = function()
      vim.g.goyo_width = '90%'
      vim.g.goyo_height = '95%'

      function Goyo_before()
        vim.b.quitting = 0
        vim.b.quitting_bang = 0
        vim.api.nvim_create_autocmd('QuitPre', {
          buffer = 0,
          callback = function()
            vim.b.quitting = 1
          end,
        })
        vim.cmd('cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!')
      end

      function Goyo_after()
        if vim.b.quitting == 1 and #vim.fn.filter(vim.fn.range(1, vim.fn.bufnr('$')), 'buflisted(v:val)') == 1 then
          if vim.b.quitting_bang == 1 then
            vim.cmd('qa!')
          else
            vim.cmd('qa')
          end
        end
      end

      vim.g.goyo_callbacks = { Goyo_before, Goyo_after }
    end,
  },

  -- Start screen
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')

      dashboard.section.header.val = {
        '                                                        ,,,           ',
        '                                                       (o o)          ',
        '----------------------------------------------------ooO-(_)-Ooo-------',
        '                              _                                 _ ___ ',
        '               __      _____ | |_     _ __   ___     __ _ _   _(_) _ \\',
        '               \\ \\ /\\ / / _ \\| __|   | \'\'_ \\/ _ \\   / _` | | | | |// /',
        '                \\ V  V / (_) | |_ _  | | | | (_) | | (_| | |_| | | \\/ ',
        '                 \\_/\\_/ \\___/ \\__( ) |_| |_|\\___/   \\__, |\\__,_|_| () ',
        '                                 |/                 |___/             ',
      }
      dashboard.section.buttons.val = {
        dashboard.button('e', '  New file', ':enew<CR>'),
        dashboard.button('f', '  Find file', ':Telescope find_files<CR>'),
        dashboard.button('r', '  Recent files', ':Telescope oldfiles<CR>'),
        dashboard.button('q', '  Quit', ':qa<CR>'),
      }

      alpha.setup(dashboard.opts)
    end,
  },
}
