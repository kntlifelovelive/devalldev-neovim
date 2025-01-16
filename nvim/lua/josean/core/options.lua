vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2 -- 4 Space for tabs (prettier default)
opt.shiftwidth = 2 -- 4 Spaces for Indent width.
opt.expandtab = true -- Expand tab to Spaces
opt.autoindent = true -- Copy indent from current line when starting new one.

opt.wrap = false

-- Search Settings
opt.ignorecase = true -- Ignore case when Searching.
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive.

opt.cursorline = true

-- Turn on termguicolors for tokyoninght colorscheme to work

opt.termguicolors = true
opt.background = "dark" -- Colorscheme that can be light or dark will be made dark
opt.signcolumn = "yes" -- Show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line or insert mode start position


-- Clipboard
opt.clipboard:append("unnamedplus")     -- Use system clipboard as default register


-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom



-- turn off swapfile
opt.swapfile = false



