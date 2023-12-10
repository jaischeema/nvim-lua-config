local function in_string()
	local context = require("cmp.config.context")
	return context.in_treesitter_capture("string") or context.in_syntax_group("String")
end

local function in_spell()
	local context = require("cmp.config.context")
	return context.in_treesitter_capture("spell")
end

local function config()
	local cmp = require("cmp")
	local cmp_action = require("lsp-zero").cmp_action()
	local cmp_format = require("lsp-zero").cmp_format()
	local luasnip = require("luasnip")

	cmp.setup({
		sources = {
			{
				name = "luasnip",
				entry_filter = function()
					return not in_string()
				end,
			},
			{ name = "treesitter" },
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "buffer" },
			{ name = "async_path" },
			{ name = "calc" },
			{
				name = "spell",
				option = {
					keep_all_entries = false,
					enable_in_context = in_spell,
				},
			},
		},

		mapping = cmp.mapping.preset.insert({
			-- `Enter` key to confirm completion
			["<CR>"] = cmp.mapping.confirm({ select = false }),

			-- Ctrl+Space to trigger completion menu
			["<C-Space>"] = cmp.mapping.complete(),

			-- Super Tab
			["<Tab>"] = cmp_action.tab_complete(),
			["<S-Tab>"] = cmp_action.select_prev_or_fallback(),

			-- Navigate between snippet placeholder
			["<C-f>"] = cmp_action.luasnip_jump_forward(),
			["<C-b>"] = cmp_action.luasnip_jump_backward(),

			-- Scroll up and down in the completion documentation
			["<C-u>"] = cmp.mapping.scroll_docs(-4),
			["<C-d>"] = cmp.mapping.scroll_docs(4),
		}),

		formatting = cmp_format,

		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},

		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
	})
end

return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"FelipeLema/cmp-async-path",
		"L3MON4D3/LuaSnip",
		"f3fora/cmp-spell",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-calc",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		--   "nvim-treesitter/nvim-treesitter",
		--  "ray-x/cmp-treesitter",
		-- "saadparwaiz1/cmp_luasnip",
	},
	event = "InsertEnter",
	config = config,
}
