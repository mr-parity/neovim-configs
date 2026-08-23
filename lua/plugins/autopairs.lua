return {
  'windwp/nvim-autopairs',
  -- Performance Optimization: Only load this plugin when you actively enter Insert Mode!
  event = "InsertEnter", 
  -- Passing 'opts = {}' automatically calls require('nvim-autopairs').setup() behind the scenes
  opts = {
    check_ts = true, -- Integrates with Treesitter to make pairing smarter inside strings/comments
  },
}

