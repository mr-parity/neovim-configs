return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false, -- Make sure it loads immediately on startup
  config = function()

    -- This line actually turns the downloaded theme ON
    vim.cmd([[colorscheme catppuccin-mocha]])
  end,
}


