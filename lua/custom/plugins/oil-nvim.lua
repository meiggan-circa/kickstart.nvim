local detail = false
return {
  'stevearc/oil.nvim',
  enabled = true,
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    win_options = { signcolumn = 'yes:2' },
    keymaps = {
      ['gd'] = {
        desc = 'Toggle file detail view',
        callback = function()
          detail = not detail
          if detail then
            require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
          else
            require('oil').set_columns { 'icon' }
          end
        end,
      },
    },
  },
  -- Optional dependencies
  -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}

-- vim: ts=2 sts=2 sw=2 et
