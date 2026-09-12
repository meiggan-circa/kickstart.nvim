local function gh(repo) return 'https://github.com/' .. repo end
vim.pack.add {
  gh 'stevearc/oil.nvim',
  gh 'refractalize/oil-git-status.nvim',
}

require('oil-git-status').setup()

-- vim: ts=2 sts=2 sw=2 et
