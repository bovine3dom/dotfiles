-- ~/.config/nvim/lua/plugins/utils.lua

return {
    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup({
                    pickers = {
                        colorscheme = {
                            enable_preview = true
                        }
                    }
                })
        end
    },
    { 'https://github.com/mtikekar/nvim-send-to-term' },
    { 'romainchapou/nostalgic-term.nvim',
        config = function()
            require('nostalgic-term').setup({
                    start_in_insert_mode = false,
                    add_normal_mode_mappings = true,
                    add_vim_ctrl_w = true,
            })
        end
    },

    -- Ripgrep integration
    { 'jremmen/vim-ripgrep' },

    -- Conflicts marker
    { 'whiteinge/diffconflicts' },

    -- { 'ihsanturk/neuron.vim' },

    -- Pandoc integration
    {'vim-pandoc/vim-pandoc',
        dependencies = {'vim-pandoc/vim-pandoc-syntax'},
        ft = { "markdown", "pandoc" },
        -- config = function()
        --     vim.cmd [[
        --     nunmap j
        --     nunmap k
        --     ]]
        -- end
    },
    -- 'vim-pandoc/vim-pandoc-syntax',

    -- Polyglot for syntax highlighting
    'sheerun/vim-polyglot',

    -- Async run
    'skywind3000/asyncrun.vim',

    {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({
                    keymaps = {
                        accept_suggestion = "<Tab>",
                        -- accept_word = "<CS-j>",
                    }
                })
        end,
    },
    -- {
    --     "yetone/avante.nvim",
    --     -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    --             -- ⚠️ must add this setting! ! !
    --             build = vim.fn.has("win32") ~= 0
    --             and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
    --             or "make",
    --             event = "VeryLazy",
    --             version = false, -- Never set this value to "*"! Never!
    --             ---@module 'avante'
    --             ---@type avante.Config
    --             opts = {
    --                 -- for example
    --                 provider = "openai",
    --             },
    --             dependencies = {
    --                 "nvim-lua/plenary.nvim",
    --                 "MunifTanjim/nui.nvim",
    --                 --- The below dependencies are optional,
    --                 -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
    --                 -- "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    --                 -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    --                 -- "ibhagwan/fzf-lua", -- for file_selector provider fzf
    --                 -- "stevearc/dressing.nvim", -- for input provider dressing
    --                 -- "folke/snacks.nvim", -- for input provider snacks
    --                 -- "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    --                 -- "zbirenbaum/copilot.lua", -- for providers='copilot'
    --                 -- {
    --                 --     -- support for image pasting
    --                 --     "HakonHarnes/img-clip.nvim",
    --                 --     event = "VeryLazy",
    --                 --     opts = {
    --                 --         -- recommended settings
    --                 --         default = {
    --                 --             embed_image_as_base64 = false,
    --                 --             prompt_for_file_name = false,
    --                 --             drag_and_drop = {
    --                 --                 insert_mode = true,
    --                 --             },
    --                 --             -- required for Windows users
    --                 --             use_absolute_path = true,
    --                 --         },
    --                 --     },
    --                 -- },
    --                 -- {
    --                 --     -- Make sure to set this up properly if you have lazy=true
    --                 --         'MeanderingProgrammer/render-markdown.nvim',
    --                 --         opts = {
    --                 --             file_types = { "markdown", "Avante" },
    --                 --         },
    --                 --         ft = { "markdown", "Avante" },
    --                 --     },
    --                 -- },
    --             }
    --         }
        }
