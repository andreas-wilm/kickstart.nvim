return {
  'vigemus/iron.nvim',
  -- AW
  -- - opens by default as split. Once in the REPL, toggle between normal mode and insert mode
  --   with <C-\><C-n> and i. That's because it's running in Terminal Mode
  -- - use :h iron-commands to see all commands.
  -- - Config mostly from https://github.com/wbthomason/dotfiles/blob/main/dot_config/nvim/lua/plugins.lua
  -- - using <leader>r as prefix here
  --
  cmd = { 'IronRepl', 'IronFocus' },
  init = function()
    vim.keymap.set('n', '<leader>rs', '<cmd>IronRepl<cr>', { desc = 'Open Iron REPL' }) -- AW actually a toggle so no idea with IronHide is needed
    -- vim.keymap.set('n', '<leader>rr', '<cmd>IronRestart<cr>', { desc = 'Restart Iron REPL' })
    -- use split shortcuts instead of: vim.keymap.set('n', '<leader>rf', '<cmd>IronFocus<cr>', { desc = 'Focus Iron REPL' })
    vim.keymap.set('n', '<leader>rh', '<cmd>IronHide<cr>', { desc = 'Hide Iron REPL' })
  end,
  config = function()
    require('iron.core').setup {
      config = {
        -- repl_open_cmd = require('iron.view').bottom '40%',
        repl_open_cmd = require('iron.view').split.vertical.botright(50),
        repl_definition = {
          sh = {
            command = { 'zsh' },
          },
          python = {
            command = { 'ipython', '--no-autoindent' },
            format = require('iron.fts.common').bracketed_paste_python,
          },
        },
        highlight = { italic = true },
      },
      keymaps = {
        -- only allowing visuals
        visual_send = '<leader>r<cr>',
        exit = '<leader>rq',
        -- send_line = '<leader>r<cr>',
        -- send_file = '<leader>rf',
        -- send_motion = '<leader>rv',
        -- clear = '<leader>rc',
        -- send_mark = '<leader>rsm',
        -- mark_motion = '<leader>rmc',
        -- mark_visual = '<leader>rmc',
        -- remove_mark = '<leader>rmd',
        -- cr = '<leader>r<cr>',
        -- interrupt = '<leader>ri',
      },
    }
  end,
}
