-- ========== USER INTERFACE ==========
vim.opt.number = true; 		        -- show line numbers
vim.opt.signcolumn = "yes" 	        -- show sign column (git/lsp)
vim.opt.termguicolors = true 	    -- enable 24bit RGB colors

-- ========== TABS, INDENTATION & WRAPPING ==========
vim.opt.tabstop = 4		            -- numbers of spaces a <TAB> takes
vim.opt.shiftwidth = 4 		        -- number of spaces used for auto indent
vim.opt.expandtab = true 	        -- converts tab into spaces
vim.opt.smartindent = true 	        -- enable smart indentation
vim.opt.wrap = false 		        -- diable text wrapping

-- ========== SEARCHING & CLIPBOARD ==========
vim.opt.hlsearch = false            -- disable continuous higlight of search matches after search
vim.opt.incsearch = true            -- show search matches dynamically while typing
vim.opt.ignorecase = true           -- ignore case sensitivity
vim.opt.smartcase = true            --override ignorecase if search has a capital letter
vim.opt.clipboard = "unnamedplus"   -- sync with system clipboard

-- ========== SPLITTING WINDOWS & MOUSE ==========
vim.opt.mouse = "a"                 -- allow mouse support on all modes
vim.opt.splitright = true           -- vertical split opens right
vim.opt.splitbelow = true           -- horizontal splits open below


-- ========== PERFORMANCE & STABILITY ==========
vim.opt.updatetime = 250            -- decrease interval response lag
vim.opt.swapfile = false            -- disable creation of .swp files

