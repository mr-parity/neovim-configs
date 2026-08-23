return {
  -- 1. Corrected Core Package Manager
  {
    "mason-org/mason.nvim", -- UPDATED: Points to the modern GitHub organization
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      -- Initialize the Mason UI client engine
      require("mason").setup()

      -- Tell Mason to automatically fetch your core servers
      require("mason-lspconfig").setup({
        ensure_installed = { "clangd", "pyright", "ts_ls", "bashls", "lua_ls" },
      })

      -- MODERN NEOVIM CORE WAY: Hooks servers directly into native v0.12 internals
      local servers = { "clangd", "pyright", "ts_ls", "bashls", "lua_ls" }
      
      for _, server in ipairs(servers) do
        -- Register the settings and boot the indexer safely via core methods
        vim.lsp.config(server, {})
        vim.lsp.enable(server)
      end

      -- Global IntelliSense Shortcuts (Normal Mode)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Show documentation" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Actions" })
    end,
  },

  -- 2. Visual Autocomplete Engine Box
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", 
      "hrsh7th/cmp-path",     
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(), 
          ['<CR>'] = cmp.mapping.confirm({ select = true }), 
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'path' },
        })
      })
    end,
  }
}

