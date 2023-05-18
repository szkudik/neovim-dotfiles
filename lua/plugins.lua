return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Colorscheme
	use { "catppuccin/nvim", as = "catppuccin"}
	vim.cmd.colorscheme("catppuccin")
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
	-- End of Colorscheme

	-- Telescope, a file finder -- 
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { {'nvim-lua/plenary.nvim'} }
	}
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>t', builtin.find_files, {})
	-- End of Telescope --

	-- Treesitter, may colour take the world --
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	require("treesitter")
	-- End of Treesitter -- 

	-- LSP Zero, language server and autocompletion --
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}
	require("mason").setup()
	require("lsp-zero").preset("recommended")
	require("lsp-zero").setup()
	-- End of LSP --

	-- Neomake, for async program running (some dependency) --
	use {'neomake/neomake' }
	-- End of neomake --

	-- Dashboard, cool greeter --
	use {
		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				theme = 'doom' --  theme is doom and hyper default is hyper			-- config

			}
		end,
		requires = {'nvim-tree/nvim-web-devicons'}
	}

	-- rnvimr, ranger as file browser --
	use {
		'kevinhwang91/rnvimr'
	}

end)
