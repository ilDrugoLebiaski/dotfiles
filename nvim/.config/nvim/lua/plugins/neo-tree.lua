return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		lazy = true,

		config = function()
			vim.keymap.set("n", "\\", "<Cmd>Neotree reveal<CR>", { desc = "NeoTree reveal", silent = true })

			require("neo-tree").setup({
				filesystem = {
					filtered_items = {
						visible = true,
						hide_dotfiles = false,
						hide_gitignored = false,
					},
					window = {
						mappings = {
							["\\"] = "close_window",
						},
					},
				},
			})
		end,
	},
}
