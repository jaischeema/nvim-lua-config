function config()
	local lsp_zero = require("lsp-zero")

	require("mason").setup({})
	require("mason-lspconfig").setup({
		handlers = {
			lsp_zero.default_setup,
			lua_ls = function()
				-- (Optional) configure lua language server
				local lua_opts = lsp_zero.nvim_lua_ls()
				require("lspconfig").lua_ls.setup(lua_opts)
			end,
		},
	})
end

return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = config,
}
