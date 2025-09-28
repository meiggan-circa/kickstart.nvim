-- This is from TJ DeVries's Advanced telescope.nvim Examples
-- https://www.youtube.com/watch?v=xdXE1tOT-qg
--
-- This is like the live grep builtin picker? but instead of searching your entire current working directory,
-- You can narrow it down into a particular file type/directory by providing a pattern.
--
-- By default, the delimiter used is a double space so after that space, you provide the pattern.
-- Say I want to search for a function getUsers() in my typescript files, I'll do: getUsers()  *.tsx
--
-- I liked what he did, so I put it here. It makes searching for specific variables and symbols easier for me.

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local themes = require "telescope.themes"
local make_entry = require "telescope.make_entry"
local conf = require "telescope.config".values

local M = {}

local live_multigrep = function(opts)
  opts = opts or {}
  opts.cwd = opts.cwd or vim.uv.cwd()

  local finder = finders.new_async_job({
    command_generator = function(prompt)
      if not prompt or prompt == "" then
        return nil
      end

      local pieces = vim.split(prompt, "  ")
      local args = { "rg" }

      if pieces[1] then
        table.insert(args, "-e")
        table.insert(args, pieces[1])
      end

      if pieces[2] then
        table.insert(args, "-g")
        table.insert(args, pieces[2])
      end

      --@diagnosticdisable-next-line: deprecated
      return vim.tbl_flatten({
        args,
        { "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case" },
      })
    end,

    entry_maker = make_entry.gen_from_vimgrep(opts),
    cwd = opts.cwd,
  })

  pickers.new(opts, {
    debounce = 100,
    prompt_title = "Multi Grep",
    finder = finder,
    previewer = conf.grep_previewer(opts),
    sorter = require("telescope.sorters").empty()
  }):find()
end


M.setup = function()
  vim.keymap.set("n", "<leader>sg", function()
    local theme = themes.get_ivy({
      layout_config = {
        height = 100
      }
    })

    live_multigrep(theme)
  end)
end

return M
-- vim: ts=2 sts=2 sw=2 et
