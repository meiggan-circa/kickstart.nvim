-- [[ Colorscheme ]]
-- You can easily change to a different colorscheme.
-- Change the name of the colorscheme plugin below, and then
-- change the command under that to load whatever the name of that colorscheme is.
--
-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
vim.pack.add { 'https://github.com/rose-pine/neovim' }
---@diagnostic disable-next-line: missing-fields
require('rose-pine').setup {
  styles = {
    comments = { italic = false }, -- Disable italics in comments
  },
}

-- Load the colorscheme here.
-- Like many other themes, this one has different styles, and you could load
-- any other, such as 'rose-pine-main', 'rose-pine-moon', or 'rose-pine-dawn'.
vim.cmd.colorscheme 'rose-pine-main'

-- vim: ts=2 sts=2 sw=2 et
