return {
	{
		"bluz71/vim-nightfly-guicolors",
		--		"ellisonleao/gruvbox.nvim",
		--	"folke/tokyonight.nvim",
		--	"rebelot/kanagawa.nvim",
		--"shaunsingh/nord.nvim",
		-- "catppuccin/nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.g.nightflyTransparent = 3
			vim.cmd([[colorscheme nightfly]])
		end,
	},
}
