-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic Config & Keymaps
--  See `:help vim.diagnostic.Opts`
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },

  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Text shows up underneath the line, with virtual lines

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = {
    on_jump = function(_, bufnr)
      vim.diagnostic.open_float {
        bufnr = bufnr,
        scope = 'cursor',
        focus = false,
      }
    end,
  },
}

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

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

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- Rebinded vim motions to center current line in screen when moving
-- Makes it easy for me to navigate/scroll thru lines of code/files
vim.keymap.set('n', 'j', 'jzz', { desc = 'Move down one line' })
vim.keymap.set('n', 'k', 'kzz', { desc = 'Move up one line' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down half a screen' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up half a screen' })

vim.keymap.set('n', '<C-f>', '<C-f>zz', { desc = 'Scroll down a full screen' })
vim.keymap.set('n', '<C-b>', '<C-b>zz', { desc = 'Scroll up a full screen' })

vim.keymap.set('n', 'G', 'Gzz', { desc = 'Go to last line / specified line' })

vim.keymap.set('n', 'H', 'Hzz', { desc = 'Move to top of screen' })
vim.keymap.set('n', 'L', 'Lzz', { desc = 'Move to bottom of screen' })

vim.keymap.set('n', '{', '{zz', { desc = 'Move up to start of previous paragraph' })
vim.keymap.set('n', '}', '}zz', { desc = 'Move up to start of next paragraph' })

vim.keymap.set('n', 'n', 'nzz', { desc = 'Forward search last pattern' })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'Backward search last pattern' })

vim.keymap.set('n', '<C-i>', '<C-i>zz', { desc = 'Go forward in jump list' })
vim.keymap.set('n', '<C-o>', '<C-o>zz', { desc = 'Go backward in jump list' })

vim.keymap.set('v', 'o', 'ozz', { desc = 'Move the cursor to start/end of selection' })
vim.keymap.set('v', 'O', 'Ozz', { desc = 'Move the cursor to start/end of blockwise-selection' })

-- Personal keymaps
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save file' })
vim.keymap.set({ 'i', 'v' }, '<C-s>', '<Esc>:w<CR>', { desc = 'Save file' })

vim.keymap.set('n', 'Za', ':wqa<CR>', { desc = 'Quit and save all windows' })

vim.keymap.set('n', '<leader>T', ':tabnew<CR>', { desc = 'Open New Tab' })

vim.keymap.set('n', '<leader>vp', ':lua vim.pack.update(nil, { offline = true }) <CR>', { desc = 'Explore installed plugins' })
vim.keymap.set('n', '<leader>ms', ':Mason<CR>', { desc = 'Open Mason Package Manager' })

vim.keymap.set('n', '<leader>z', ':Undotree<CR>', { desc = 'Toggle Undotree' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- vim: ts=2 sts=2 sw=2 et
