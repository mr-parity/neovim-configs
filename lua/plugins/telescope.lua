return {
  'nvim-telescope/telescope.nvim',
  version = '*', -- Uses the latest stable release tag
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- Add the devicons plugin here as a dependency
    'nvim-tree/nvim-web-devicons',
    -- This compiles the native C sorter to make searches instantly fast
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    -- Initialize devicons before loading Telescope
    require('nvim-web-devicons').setup({ default = true })

    -- Setup Telescope with devicons enabled
    require('telescope').setup({
      defaults = {
        -- Telescope automatically enables icons if nvim-web-devicons is loaded
        disable_devicons = false, 
      }
    })

    local builtin = require('telescope.builtin')

    -- The two essential shortcuts
    vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
  end,
}

