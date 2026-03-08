return {
  'kevinhwang91/nvim-ufo',
  dependencies = { 'kevinhwang91/promise-async' },
  config = function()
    local ufo = require 'ufo'

    vim.keymap.set('n', 'zR', ufo.openAllFolds, { desc = 'Open all folds' })
    vim.keymap.set('n', 'zM', ufo.closeAllFolds, { desc = 'Close all folds' })

    ufo.setup {
      provider_selector = function(bufnr, filetype, buftype)
        return { 'treesitter', 'indent' }
      end,
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
