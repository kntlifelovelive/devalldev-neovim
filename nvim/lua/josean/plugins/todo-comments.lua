return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    -- Add TODO Comments template
    -- TODO: Refactor the function to improve performance
    -- HACK: Temporary fix for edge case handling
    -- BUG: Fix issue with incorrect variable assignment
    -- PERF: Optimize the algorithm for better runtime complexity
    -- NOTE: This part is critical for integration with other plugins
    -- WARN: Avoid using global variables in this scope
    -- FIX: Resolve error occurring during initialization

    -- Set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Jump to the next TODO comment" })

    keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Jump to the previous TODO comment" })

    -- Initialize the plugin
    todo_comments.setup {
      -- Custom configuration (optional)
      signs = true, -- Show icons in the gutter
      keywords = {
        TODO = { icon = " ", color = "info", alt = { "TASK" } },
        HACK = { icon = " ", color = "warning", alt = { "HOTFIX" } },
        BUG = { icon = " ", color = "error", alt = { "ISSUE", "FIXME" } },
        PERF = { icon = " ", color = "hint", alt = { "OPTIMIZE" } },
        NOTE = { icon = " ", color = "default", alt = { "INFO" } },
        WARN = { icon = " ", color = "warning", alt = { "WARNING" } },
        FIX = { icon = " ", color = "error", alt = { "BUG", "PATCH" } },
      },
      highlight = {
        before = "", -- "fg" or "bg" or empty
        keyword = "wide", -- Highlight the keyword
        after = "fg", -- Highlight after the keyword
      },
    }
  end,
}

