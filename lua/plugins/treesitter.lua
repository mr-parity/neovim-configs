return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,        -- Must be false; Treesitter cannot be lazy-loaded
  build = ':TSUpdate', -- Compiles parsers natively via tree-sitter-cli and gcc

  config = function()
    -- 1. Set the central directory where compiled languages are saved
    require('nvim-treesitter').setup({
      install_dir = vim.fn.stdpath('data') .. '/site'
    })

    -- 2. List of the world's most popular daily programming languages to install
    require('nvim-treesitter').install({
      -- Systems & Backend
      'c', 'cpp', 'rust', 'go', 'python',
      -- Web Development
      'javascript', 'typescript', 'html', 'css',
      -- Shell & Databases
      'bash', 'sql', 'dockerfile',
      -- Documentation & Core configs
      'markdown', 'lua', 'json', 'yaml', 'toml'
    })

    -- 3. High-performance, fail-safe code coloring engine
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { '*' }, -- Monitor all file types globally
      callback = function()
        -- Safely look up if a compiled syntax file actually exists on your Mac drive
        local has_parser = vim.treesitter.language.get_lang(vim.bo.filetype)
        
        -- Only trigger if a parser is present (prevents internal :Lazy screen crashes!)
        if has_parser then
          pcall(vim.treesitter.start) -- Turns on the color highlight matrix smoothly
        end
      end,
    })
  end,
}

