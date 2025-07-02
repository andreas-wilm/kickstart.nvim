-- https://neovide.dev/
if vim.g.neovide then
  -- Get a list of supported fonts: :set guifont=*
  -- vim.o.guifont = { "MesloLGL Nerd Font Mono", ":h16" }
  vim.o.guifont = 'MesloLGL Nerd Font Mono:h16'
  -- https://linkarzu.com/posts/neovim/neovim-vs-neovide/
  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
  vim.api.nvim_set_keymap('n', '<C-z>', '<NOP>', { noremap = true, silent = true })
end
