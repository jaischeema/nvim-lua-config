local opts = {
	keys = {
		{
			"<leader>gq",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd", "prettier" },
		typescript = { "prettierd", "prettier" },
		css = { "prettierd", "prettier" },
		scss = { "prettierd", "prettier" },
		less = { "prettierd", "prettier" },
		html = { "prettierd", "prettier" },
		json = { "prettierd", "prettier" },
		yaml = { "prettierd", "prettier" },
		markdown = { "prettierd", "prettier" },
		rust = { "rustfmt" },
	},
	format_on_save = function(bufnr)
		return { timeout_ms = 500, lsp_fallback = true }
	end,
}

return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	cmd = "ConformInfo",
	opts = opts,
}
