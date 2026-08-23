return {
  'lewis6991/gitsigns.nvim',
  -- Performance Optimization: Only load when reading or writing actual file buffers
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    -- 1. Turn on beautiful inline sign indicators in your line number column
    signs = {
      add          = { text = '┃' },
      change       = { text = '┃' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
      untracked    = { text = '┆' },
    },
    -- 2. Toggle a subtle, faint text indicator showing who wrote the line (Git Blame)
    current_line_blame = true, 
    current_line_blame_opts = {
      delay = 500, -- Wait half a second before showing the blame text
    },
  },
}

