return {
  'olrtg/nvim-emmet',
  config = function()
    vim.keymap.set({ 'n', 'v' }, '<leader><Tab>', require('nvim-emmet').wrap_with_abbreviation, { desc = '[Emmet]Wrap with Abbrevation' })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
