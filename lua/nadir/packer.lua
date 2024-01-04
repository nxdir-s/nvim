-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local vim = vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"craftzdog/solarized-osaka.nvim",
		as = "solarized-osaka",
		priority = 1000,
	})

	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				icons = false,
				fold_open = "v", -- icon used for open folds
				fold_closed = ">", -- icon used for closed folds
				indent_lines = false, -- add an indent guide below the fold icons
				use_diagnostic_signs = false, -- enabling this will use the signs defined in your lsp client
			})
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
	})

	use("theprimeagen/harpoon")
	--use("nvim-treesitter/nvim-treesitter-context")
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("fatih/vim-go", { run = ":GoUpdateBinaries" })
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	use("nvim-lualine/lualine.nvim")
	use("numToStr/Comment.nvim")

	-- formatting
	use("stevearc/conform.nvim")

	-- tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

	-- maximizes and restores current window
	use("szw/vim-maximizer")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },

			-- configuring lsp servers
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "folke/neodev.nvim" },
			--{ "hrsh7th/cmp-nvim-lua" },

			-- Useful status updates for LSP
			{ "j-hui/fidget.nvim" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
end)
