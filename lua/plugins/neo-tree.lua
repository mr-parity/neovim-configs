return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x", -- Uses the stable v3 release branch exactly as recommended
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- Enables your Catppuccin file icons
  },
  
  -- 1. Configuration settings passed directly via 'opts'
  opts = {
    close_if_last_window = true, -- Auto-closes Neovim if only the sidebar is left open
    window = {
      width = 30, -- Keeps the side window a clean, fixed size
    },
  },

  -- 2. Your keymap configuration function block
  init = function()
    -- Maps Space + e to slide the folder directory tree view open or closed
    vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle File Tree" })
  end,
}

