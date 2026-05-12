return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>fb",
			function()
				require("conform").format({ async = true })
			end,
			mode = "n",
			desc = "[F]ormat [B]uffer",
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			local enabled_filetypes = {
				lua = true,
				python = true,
				rust = true,
				c = true,
			}
			if enabled_filetypes[vim.bo[bufnr].filetype] then
				return { timeout_ms = 500 }
			end
		end,
		default_format_opts = {
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			rust = { "rustfmt" },
			c = { "clang_format" },

			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use 'stop_after_first' to run the first available formatter from the list
			-- javascript = { "prettierd", "prettier", stop_after_first = true },
		},
	},
}
