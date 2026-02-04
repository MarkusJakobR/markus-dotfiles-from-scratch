return {
	-- Telescope main plugin
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required for Telescope
			"BurntSushi/ripgrep", -- for live grep
			"nvim-tree/nvim-web-devicons", -- optional icons
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- FZF sorter
		},
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					file_ignore_patterns = { "node_modules", ".git/" },
					prompt_prefix = "🔍 ",
					selection_caret = " ",
					path_display = { "smart" },
				},
				pickers = {
					find_files = {
						hidden = true, -- show hidden files
					},
				},
			})

			-- Load FZF native extension
			telescope.load_extension("fzf")
		end,
	},

	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
}
