-- ~/.config/nvim/lua/plugins/editor.lua

return {
  -- Sensible defaulto
  'tpope/vim-sensible',

  -- Undo treo
  {
    'mbbill/undotree',
    config = function()
      vim.g.undotree_DiffAutoOpen = 1
      vim.g.undotree_SetFocusWhenToggle = 1
    end,
  },

  -- Git integration
  'tpope/vim-fugitive',
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup({
        current_line_blame = true,
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol',
          delay = 1000,
        },
      })
      vim.g.gitgutter_diff_base = 'master'
    end,
  },
  { -- get tabs/spaces right
    'nmac427/guess-indent.nvim',
    config = function() require('guess-indent').setup {} end,
  },


  -- Surrounding pairs
  'tpope/vim-surround',
  -- {
  --   'kylechui/nvim-surround',
  --   version = '*',
  --   event = 'VeryLazy',
  --   config = function()
  --     require('nvim-surround').setup({})
  --   end,
  -- },

  -- Commenting
  -- {
  --   'numToStr/Comment.nvim',
  --   opts = {},
  --   lazy = false,
  -- },
  'tpope/vim-commentary',

  {
    'obsidian-nvim/obsidian.nvim',
    version = '*',
    ft = 'markdown',
    opts = {
      workspaces = {
        { name = 'brain', path = '~/projects/brain' },
      },
      legacy_commands = false,
    },
  },

  -- Motion
  -- {
  --   'ggandor/flash.nvim',
  --   event = 'VeryLazy',
  --   opts = {},
  -- },

  -- EditorConfig support
  'editorconfig/editorconfig-vim',
}
