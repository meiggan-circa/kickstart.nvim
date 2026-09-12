vim.pack.add { 'https://github.com/olrtg/nvim-emmet' }

local nvim_emmet = require 'nvim-emmet'
nvim_emmet.setup {
  vim.keymap.set({ 'n', 'v' }, '<leader><Tab>', nvim_emmet.wrap_with_abbreviation, { desc = 'Emmet: Wrap with Abbrevation' }),
}
