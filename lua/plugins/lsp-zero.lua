local function config()
	local lsp_zero = require("lsp-zero")

	lsp_zero.on_attach(function(client, bufnr)
		-- see :help lsp-zero-keybindings
		-- to learn the available actions
		lsp_zero.default_keymaps({ buffer = bufnr })
	end)

	require("mason-lspconfig").setup({
		handlers = {
			lsp_zero.default_setup,
			lua_ls = function()
				require("lspconfig").lua_ls.setup({
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				})
			end,
		},
	})
end

return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	config = config,
	lazy = false,
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
}
