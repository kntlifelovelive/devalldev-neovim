-- return {
--   "nvim-lua/plenary.nvim", -- lua functions that many plugins use
--   "christoomey/vim-tmux-navigator", -- tmux & split window navigation
-- }

-- return {
--     "nvim-lua/plenary.nvim", -- lua functions that many plugins use
--     "christoomey/vim-tmux-navigator", -- tmux & split window navigation
--
--     -- Catppuccin Theme
--     {
--         "catppuccin/nvim",
--         name = "catppuccin",
--         priority = 1000, -- Load before others
--         config = function()
--             require("catppuccin").setup({
--                 flavour = "mocha", -- latte, frappe, macchiato, mocha
--             })
--             vim.cmd.colorscheme("catppuccin")
--         end,
--     },
--
--
-- lua/josean/plugins/init.lua
return {
    -- Core plugins
    "nvim-lua/plenary.nvim", -- lua functions that many plugins use
    "christoomey/vim-tmux-navigator", -- tmux & split window navigation

    -- Catppuccin Theme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000, -- Load before others
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
            })
            vim.cmd.colorscheme("catppuccin")
        end,
    },

    -- Add more plugins below this line
    -- Telescope (Fuzzy Finder)
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<C-j>"] = "move_selection_next",
                            ["<C-k>"] = "move_selection_previous",
                        },
                    },
                },
            })
        end,
    },

    -- Treesitter (Syntax Highlighting)
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "python", "javascript", "typescript", "html", "css" },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },

    -- LSP (Language Server Protocol)
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "tsserver" },
            })
            require("lspconfig").lua_ls.setup({})
            require("lspconfig").pyright.setup({})
            require("lspconfig").tsserver.setup({})
        end,
    },

    -- ToggleTerm (Terminal Integration)
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                size = 20,
                open_mapping = [[<c-\>]],
                direction = "horizontal",
            })
        end,
    },

    -- Lualine (Statusline)
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "catppuccin",
                },
            })
        end,
    },

    -- NvimTree (File Explorer)
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup({
                view = {
                    width = 35,
                },
            })
        end,
    },

    -- Autopairs (Auto-close brackets, quotes, etc.)
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },

    -- Comment (Commenting support)
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },

    -- Gitsigns (Git integration)
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },

    -- WhichKey (Keybinding helper)
    {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup()
        end,
    },
}
