-- Highlight todo, notes, etc in comments.
-- AW: Needs a colon afterwards, e.g.
-- TODO:
-- NOTE:
-- FIX:
-- PERF:
-- HACK:
-- WARNING:
return {
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = false,
    highlight = { comments_only = false }, -- also want to see this in markdown files
  },
}
