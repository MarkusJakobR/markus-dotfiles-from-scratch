return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate", -- automatically updates parsers
		event = { "BufReadPost", "BufNewFile" }, -- lazy load on buffer open
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects", -- optional but useful
		},
		config = function()
			require("nvim-treesitter").setup({
				ensure_installed = {
					"c",
					"cpp",
					"c_sharp",
					"python",
					"javascript",
					"typescript",
					"dart",
					"html",
					"css",
					"lua",
					"json",
					"markdown",
					"bash",
					"yaml",
					"toml",
				}, -- languages to install
			})
		end,
	},
}
