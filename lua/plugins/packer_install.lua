-- adding the Packer line a neovim pocket
vim.cmd [[packadd packer.nvim]]


-- Using these collnack like a list of plugins
return require('packer').startup(function()

	use {'ray-x/go.nvim',
		config = function ()
			require('go').setup {}
		end
	}

	-- indentline
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function ()
			-- require("ibl").setup {}
			require('plugins/indentline')
		end
	}

	-- Nivim surround
	use {
		"kylechui/nvim-surround",
		tag="*",
		config = function ()
			require("nvim-surround").setup {}
		end
	}

	-- addint the packer to list for self updates
	use 'wbthomason/packer.nvim'

	-- LSP server
	use 'neovim/nvim-lspconfig'

	-- for ru-eng keyboard commands
    use 'powerman/vim-plugin-ruscmd'

	-- icons for autocomplete
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('plugins/lspkind')
		end
	}

	-- installer for the LSP servers
	use {
		'williamboman/mason.nvim',
		requires = {
			'williamboman/mason-lspconfig.nvim',
			'neovim/nvim-lspconfig',
			-- либо после того, что внизу либо в mason.lua 
			'jose-elias-alvarez/null-ls.nvim',
			'jay-babu/mason-null-ls.nvim',
		},
		config = function()
			require('plugins/mason')
		end
	}

	--menu for the displaing LSP troubles
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end,
	}

	--ststusline
	use {
		"nvim-lualine/lualine.nvim",
		-- requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },
		config = function()
			require('plugins/lualine')
		end
	}

	-- autocimplete
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
		config = function()
			require('plugins/cmp')
		end
	}

	-- NeoTree
	use {
		'nvim-neo-tree/neo-tree.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
		},
		config = function ()
			require('plugins/neotree')
		end
	}

	-- commetntor
	use {
    	'numToStr/Comment.nvim',
    	config = function()
        	require('plugins/comment')
    	end
	}

	-- Sytex highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
		config = function()
			require('plugins/treesitter')
		end
	}

	-- telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
			'ahmedkhalf/project.nvim',
		},
		config = function ()
			require("telescope").setup {}
		end
	}

	-- bufferline
	use {
		'akinsho/bufferline.nvim',
		requires = "nvim-tree/nvim-web-devicons",
		config = function ()
			require("bufferline").setup {}
		end
	}

	--autopairs
	use {
		"windwp/nvim-autopairs",
    	config = function () 
			require("nvim-autopairs").setup {} 
		end
	}

	-- theme
	-- use {
	-- 	'sainnhe/sonokai',
	-- 	config = function ()
	-- 		require("colorscheme/sonokai")
	-- 	end
	-- }


	-- themenormal
	-- Using Packer
	use {
		'navarasu/onedark.nvim',
		config = function ()
			require('onedark').setup {
				style = "darker"
			}
			require('onedark').load()
		end
	}
end)
