local config = function()
  require("telescope").load_extension("fzf")
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
