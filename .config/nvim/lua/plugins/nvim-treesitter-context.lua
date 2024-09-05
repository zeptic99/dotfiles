return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesitter-context').setup {
      lazy = false,
      enable = true,            -- Enable this plugin
      max_lines = 0,            -- No line limit for context display
      trim_scope = 'outer',     -- Discard outer context lines if `max_lines` is exceeded
      mode = 'cursor',          -- Use the cursor line to determine the context
      separator = nil,          -- No separator between context and content
    }
  end,
}
