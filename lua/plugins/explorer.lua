return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
		cmd = "Neotree",
		keys = {
			{ "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle file explorer" },
		},
	},
	{
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup()
			vim.keymap.set("n", "<leader>E", "<cmd>Oil --float<CR>", { desc = "O[il]pen parent directory" })
		end,
	},
}
