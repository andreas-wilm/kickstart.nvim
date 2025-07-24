return {
  'code-biscuits/nvim-biscuits',
  config = function()
    require('nvim-biscuits').setup({
    cursor_line_only = true,
    show_on_start = true,
    default_config = {
      max_length = 12,
      min_distance = 5,
      prefix_string = " 📎 "
    },
  })
  end,
}
