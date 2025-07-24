-- multple plugins: return a tab;e
return {
  -- :[range]Mtoc[!]
  -- :Mtoc i[nsert]
  -- :[range]Mtoc u[pdate][!]
  -- :Mtoc r[emove]
  {
    'hedyhli/markdown-toc.nvim',
    ft = 'markdown', -- Lazy load on markdown filetype
    cmd = { 'Mtoc' }, -- Or, lazy load on "Mtoc" command
    opts = {
      -- Your configuration here (optional)
    },
  },

  -- AW doesn't work with Mtoc generated TOC links
  {
    'jghauser/follow-md-links.nvim',
    ft = 'markdown',
  },

  {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  },
}
