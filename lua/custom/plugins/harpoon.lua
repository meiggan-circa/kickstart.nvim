local function gh(repo) return 'https://github.com/' .. repo end
vim.pack.add { gh 'nvim-lua/plenary.nvim' }
vim.pack.add { { src = gh 'ThePrimeagen/harpoon', version = 'harpoon2' } }

local harpoon = require 'harpoon'
harpoon:setup()

local map = function(mode, keys, func, desc)
  mode = mode or 'n'
  vim.keymap.set(mode, keys, func, { desc = 'Harpoon: ' .. desc })
end

map('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, 'Open menu')
map('n', '<leader>a', function() harpoon:list():add() end, 'Add file to harpoon list')

map('n', '<leader>1', function() harpoon:list():select(1) end, 'Go to Selection 1')
map('n', '<leader>2', function() harpoon:list():select(2) end, 'Go to Selection 2')
map('n', '<leader>3', function() harpoon:list():select(3) end,'Go to Selection 3')
map('n', '<leader>4', function() harpoon:list():select(4) end, 'Go to Selection 4')
map('n', '<leader>5', function() harpoon:list():select(5) end, 'Go to Selection 5')
map('n', '<leader>6', function() harpoon:list():select(6) end, 'Go to Selection 6')
map('n', '<leader>7', function() harpoon:list():select(7) end, 'Go to Selection 7')
map('n', '<leader>8', function() harpoon:list():select(8) end, 'Go to Selection 8' )

-- vim: ts=2 sts=2 sw=2 et
