local opts = {
	ensure_installed = {
		"cssls",
		"docker_compose_language_service",
		"dockerls",
		"dotls",
		"eslint",
		"html",
		"jsonls",
		"lua_ls",
		"marksman",
		"prettier",
		"prettierd",
		"shfmt",
		"stylua",
		"tsserver",
		"tsserver",
		"vimls",
		"yamlls",
	},
	auto_update = false,
	run_on_start = false,
}

return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	opts = opts,
	cmd = {
		"MasonToolsInstall",
		"MasonToolsUpdate",
		"MasonToolsClean",
	},
}
