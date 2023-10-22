return {
	"danymat/neogen",
	requires = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("neogen").setup({})
	end,
}
