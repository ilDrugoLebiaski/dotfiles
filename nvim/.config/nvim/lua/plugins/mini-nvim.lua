return { -- Collection of various small independent plugins/modules
	"nvim-mini/mini.nvim",
	config = function()
		require("mini.ai").setup({
			mappings = {
				around_next = "aa",
				inside_next = "ii",
			},
			n_lines = 500,
		})
	end,
}
