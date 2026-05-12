return {
	priority = 1000,
	lazy = false,
	"rebelot/kanagawa.nvim",
	opts = {
		commentStyle = { italic = true },
		keywordStyle = { italic = true },
		statementStyle = { bold = true },
	},
	config = function(_, opts)
		require("kanagawa").setup(opts)
		vim.cmd.colorscheme("kanagawa-wave")
	end,
}
