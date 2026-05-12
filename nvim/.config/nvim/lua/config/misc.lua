vim.diagnostic.config({
	update_in_insert = false,
	severity_sort = true,

	float = {
		border = "rounded",
		source = "if_many",
	},

	underline = {
		severity = { min = vim.diagnostic.severity.WARN },
	},

	virtual_text = {
		spacing = 2,
		prefix = "●",
		severity = { min = vim.diagnostic.severity.WARN },
	},

	virtual_lines = false,
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	callback = function()
		vim.hl.on_yank()
	end,
})
