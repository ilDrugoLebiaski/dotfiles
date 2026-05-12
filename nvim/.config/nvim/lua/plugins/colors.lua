return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = {
		user_default_options = {
			css = true,
			tailwind = true,
			mode = "virtualtext", -- oppure "foreground" o "virtualtext"
		},
	},

	config = function(_, opts)
		require("colorizer").setup(opts)
	end,
}
