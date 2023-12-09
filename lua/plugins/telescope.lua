local config = function()
  local telescope = require("telescope")
  local actions = require("telescope.actions")

  telescope.load_extension("fzf")

  telescope.setup({
		defaults = {
			file_ignore_patterns = { "node_modules" },
			mappings = {
				i = {
					["<esc>"] = actions.close,
				},
			},
			pickers = {
				find_files = {
					hidden = true,
				},
			},
		},
	})
end

return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    "nvim-lua/popup.nvim",
		"nvim-treesitter/nvim-treesitter",
		{
		  "nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
  },
  config = config,
  cmd = "Telescope"
}
