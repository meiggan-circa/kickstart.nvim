-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader><C-q>', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [ Personal Keymaps ]

-- -- [ REBINDED KEYS ]
vim.keymap.set('n', 'j', 'jzz')
vim.keymap.set('n', 'k', 'kzz')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<C-f>', '<C-f>zz')
vim.keymap.set('n', '<C-b>', '<C-b>zz')

vim.keymap.set('n', 'G', 'Gzz')

vim.keymap.set('n', 'H', 'Hzz')
vim.keymap.set('n', 'L', 'Lzz')

vim.keymap.set('n', 'n', 'nzz')

vim.keymap.set('n', '<C-o>', '<C-o>zz')
vim.keymap.set('n', '<C-i>', '<C-i>zz')

vim.keymap.set('v', 'o', 'ozz')
-- --

vim.keymap.set('n', '<leader>ex', ':Ex<CR>', { desc = 'Open File [Ex]plorer' })

vim.keymap.set('n', '<leader>T', ':tabnew<CR>', { desc = 'Open New [T]ab' })
vim.keymap.set('n', '<leader>rc', ':Ex ~/.config/nvim/lua/config/<CR>', { desc = 'Edit [R]untime [C]onfig' })

vim.keymap.set('n', '<leader>q', ':tabprevious<CR>', { desc = 'Go to Previous Tab' })
vim.keymap.set('n', '<leader>e', ':tabnext<CR>', { desc = 'Go to Next Tab' })

vim.keymap.set('n', '<leader>st', ':Git<CR>', { desc = 'Show git status' })

vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save file' })

vim.keymap.set('n', 'Za', ':qa<CR>', { desc = 'Quit all windows' })

vim.keymap.set('n', '<leader><leader>s', '<cmd>source %<CR>', { desc = 'Source entire file' })
vim.keymap.set('n', '<leader>s', ':.lua<CR>', { desc = 'Source current line' })
vim.keymap.set('v', '<leader>s', ':lua<CR>', { desc = 'Source selected lines' })

vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { desc = 'Save file' })
vim.keymap.set('i', '<C-z>', '<Esc>:undo<CR>i', { desc = 'Undo changes' })

vim.keymap.set('n', '<leader>z', vim.cmd.UndotreeToggle, { desc = 'Toggle [U]ndotree' })
