vim.pack.add {
  { src = 'https://github.com/folke/trouble.nvim' },
}

require('trouble').setup {}

local map = function(mode, keys, func, desc)
  mode = mode or 'n'
  vim.keymap.set(mode, keys, func, { desc = 'Trouble: ' .. desc })
end

map('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', 'Toggle diagnostics')
map('n', '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', 'Toggle buffer diagnostics')
map('n', '<leader>cs', '<cmd>Trouble symbols toggle focus=false<cr>', 'Open document symbols')
map('n', '<leader>xL', '<cmd>Trouble loclist toggle<cr>', 'Toggle location list')
map('n', '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', 'Toggle quickfix list')
map('n', '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', 'Toggle LSP definitions / references / ... ')

-- vim: ts=2 sts=2 sw=2 et
