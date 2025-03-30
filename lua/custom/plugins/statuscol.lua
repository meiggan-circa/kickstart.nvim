return {
  'luukvbaal/statuscol.nvim',
  config = function()
    local builtin = require 'statuscol.builtin'
    require('statuscol').setup {
      relculright = true,
      segments = {
        { text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
        { text = { builtin.lnumfunc }, click = 'v:lua.ScLa' },
        {
          sign = { namespace = { 'diagnostic/signs' }, maxwidth = 2, auto = true },
          click = 'v:lua.ScSa',
        },
        {
          sign = { name = { '.*' }, maxwidth = 2, colwidth = 1, auto = true, wrap = true },
          click = 'v:lua.ScSa',
        },
        {
          text = {
            ' ', -- whitespace padding between line numbers and text
          },
          condition = {
            true, -- always shown
            function(args) -- shown only for the current window
              return vim.api.nvim_get_current_win() == args.win
            end,
            builtin.not_empty, -- only shown when the rest of the statuscolumn is not empty
          },
        },
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
