local my_autocmds = {}

-- 1. Shebang automatico per file Shell Script
vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.sh",
	callback = function()
		vim.api.nvim_buf_set_lines(0, 0, 0, false, { "#!/usr/bin/env bash", "" })
		vim.api.nvim_win_set_cursor(0, { 2, 0 })
	end,
})

-- 2. Rimozione automatica degli spazi bianchi a fine riga
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		local save_cursor = vim.fn.getpos(".")
		vim.cmd([[%s/\s\+$//e]])
		vim.fn.setpos(".", save_cursor)
	end,
})

return my_autocmds
