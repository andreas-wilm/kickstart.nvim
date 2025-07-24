-- Open Buffer in Chrome (on Mac): for rendering html and markdown
function OpenInChrome()
  local file_path = vim.fn.expand '%:p' -- Get the full path of the current buffer
  vim.cmd('!open -a "Google Chrome" ' .. file_path)
end
-- AW: see also gX above
vim.api.nvim_set_keymap('n', 'gX', ':lua OpenInChrome()<CR>', { noremap = true, silent = true })
