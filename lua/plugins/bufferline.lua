return {
  'akinsho/bufferline.nvim',
  version = "*", 
  dependencies = { 
    'nvim-tree/nvim-web-devicons',
    'echasnovski/mini.bufremove', 
  },
  
  opts = {
    options = {
      mode = "buffers",
      always_show_bufferline = true,
      
      -- 1. ALTERNATE VISUAL STYLING (From GitHub Docs)
      -- Changes the square tabs into smooth, modern slanted developer tabs
      separator_style = "slant", 
      
      -- 2. INTEGRATED LSP INDICATORS (From GitHub Docs)
      -- Shows a small red or orange dot right on the tab if that specific file has an error!
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,

      -- 3. VISUAL MOUSE CONTROLLER
      close_command = function(bufnr)
        require("mini.bufremove").delete(bufnr, false)
      end,
      
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer Header",
          text_align = "left",
          separator = true,
        }
      }
    }
  },

  init = function()
    -- Tab Navigation
    vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next File Tab" })
    vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous File Tab" })
    
    -- Safe Space + c Close Shortcut
    vim.keymap.set("n", "<leader>c", function()
      local bufs = vim.fn.getbufinfo({ buflisted = 1 })
      if #bufs == 1 then
        vim.cmd("enew")
      end
      require("mini.bufremove").delete(0, false)
    end, { desc = "Close Current Tab Safely" })
  end,
}

