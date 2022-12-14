local packer = require("packer")

pcall(
	vim.cmd,
	[[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
        ]]
)

packer.startup({
	function(use)
		-- Packer 可以管理自己本身
		use 'wbthomason/packer.nvim'
		use 'folke/tokyonight.nvim'
		use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
		use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
		use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
		use("arkav/lualine-lsp-progress")
		use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
		use "LinArcX/telescope-env.nvim"
		use("glepnir/dashboard-nvim")
		use("ahmedkhalf/project.nvim")
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		-- LSP
		use { "williamboman/mason.nvim" }
		use("williamboman/nvim-lsp-installer")
		-- Lspconfig
		use({ "neovim/nvim-lspconfig" })

		-- 补全引擎
		use("hrsh7th/nvim-cmp")
		-- snippet 引擎
		use("hrsh7th/vim-vsnip")
		-- 补全源
		use("hrsh7th/cmp-vsnip")
		use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
		use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
		use("hrsh7th/cmp-path") -- { name = 'path' }
		use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

		-- 常见编程语言代码段
		use("rafamadriz/friendly-snippets")
		use("onsails/lspkind-nvim")
		use("lukas-reineke/indent-blankline.nvim")
		use("tami5/lspsaga.nvim")
		use("mhartington/formatter.nvim")

		-- startTime plugins
		use("dstein64/vim-startuptime")

		-- git
		use("tveskag/nvim-blame-line")
		-- 你的插件列表...
	end,
	config = {
		-- 并发数限制
		max_jobs = 8,
	}
})
