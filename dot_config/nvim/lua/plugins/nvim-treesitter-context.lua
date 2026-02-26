return {
  "nvim-treesitter/nvim-treesitter-context",
  after = "nvim-treesitter",  -- Ensure it's loaded after Treesitter
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("treesitter-context").setup({
      multiwindow = false, -- Enable multiwindow support.
      min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
      line_numbers = true,
      multiline_threshold = 20, -- Maximum number of lines to show for a single context
      mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
      -- Separator between context and content. Should be a single character string, like '-'.
      -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
      separator = nil,
      zindex = 20, -- The Z-index of the context window
      on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
      enable = true, -- Enable this plugin
      max_lines = 2, -- How many lines the context window should occupy
      trim_scope = "outer", -- Which context elements to trim if too large
    })
  end,
}
