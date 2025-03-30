-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- Show the line number relative to the line with the cursor in front of each line
-- Makes jumping to lines using vertical motions easier
vim.opt.relativenumber = true
-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = false

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Number of spaces to use for each step of auto indent
vim.opt.shiftwidth = 2
-- Number of spaces a tab uses in a file
vim.opt.tabstop = 2

-- width of the column used to indicate folds
vim.o.foldcolumn = '1'
-- Sets fold level. Closes folds with a level higher than specified value
-- 0 = all folds closed, 1 = some folds closed, 99 = no folds closed
vim.o.foldlevel = 99
-- 'foldlevel' when starting to edit a file
vim.o.foldlevelstart = 99
-- Set to display all folds open
vim.o.foldenable = true
-- Sets characters to use for displaying open and closed folds
vim.o.fillchars = [[foldopen:,foldclose:]]

-- vim: ts=2 sts=2 sw=2 et
