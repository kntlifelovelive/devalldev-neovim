-- -- lua/josean/plugins/toggleterm.lua
-- return {
--     "akinsho/toggleterm.nvim",
--     version = "*",
--     config = function()
--         require("toggleterm").setup({
--             size = 20, -- Terminal height (number of lines)
--             open_mapping = [[<c-\>]], -- Keymap to toggle terminal
--             -- shade_filetypes = {},
--             -- shade_terminals = true,
--             -- shading_factor = 2, -- Shading factor for terminal background
--             -- start_in_insert = true, -- Start terminal in insert mode
--             -- persist_size = true, -- Remember terminal size
--             direction = "float", -- Terminal direction (horizontal, vertical, float, tab)
--             -- close_on_exit = true, -- Close terminal when process exits
--             -- shell = vim.o.shell, -- Use default shell
--             -- auto_scroll = true, -- Automatically scroll to the bottom on new output
--             -- highlights = {
--             --     -- Custom highlights for the terminal
--             --     Normal = { guibg = "NONE" },
--             --     NormalFloat = { link = "Normal" },
--             --     FloatBorder = { guifg = "#3b4261", guibg = "NONE" },
--             },
--             float_opts = {
--                 border = "curved", -- Border style for floating terminal
--                 winblend = 0, -- Transparency level
--             },
--         })
--
--         -- Custom keymaps for terminal
--         local keymap = vim.keymap
--         keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" }) -- Toggle terminal
--         keymap.set("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" }) -- Exit terminal mode with <esc>
--         keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move to left window" }) -- Move to left window
--         keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move to bottom window" }) -- Move to bottom window
--         keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move to top window" }) -- Move to top window
--         keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move to right window" }) -- Move to right window
--     end,
-- }
-- lua/josean/plugins/toggleterm.lua
return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20, -- Terminal height (number of lines)
            open_mapping = [[<c-\>]], -- Keymap to toggle terminal
            direction = "float", -- Set terminal to floating mode
            float_opts = {
                border = "curved", -- Border style for floating terminal
                winblend = 0, -- Transparency level
                highlights = {
                    border = "Normal", -- Border highlight
                    background = "Normal", -- Background highlight
                },
            },
            close_on_exit = true, -- Close terminal when process exits
            shell = vim.o.shell, -- Use default shell
            auto_scroll = true, -- Automatically scroll to the bottom on new output
        })

        -- Custom keymaps for terminal
        local keymap = vim.keymap
        keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" }) -- Toggle terminal
        keymap.set("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" }) -- Exit terminal mode with <esc>
        keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move to left window" }) -- Move to left window
        keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move to bottom window" }) -- Move to bottom window
        keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move to top window" }) -- Move to top window
        keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move to right window" }) -- Move to right window
    end,
}
