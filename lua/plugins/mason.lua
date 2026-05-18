return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_enable = true,
			ensure_installed = {
				"clangd", -- C/C++
				"omnisharp", -- C#
				"pyright", -- python
				"ts_ls", -- typescript/javascript
				"html", -- html
				"cssls", -- css
				"lua_ls", -- lua
				"jsonls", -- json
				"marksman", -- markdown
				"tailwindcss", -- tailwind

				-- extras
				"bashls", -- bash
				"yamlls", -- yaml
				"dockerls", -- docker
				"taplo", -- toml
				"emmet_ls",
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = { "mason-lspconfig.nvim" },
		config = function()
			local lspconfig = require("lspconfig")

			-- Lua
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = { globals = { "vim", "require", "love" } },
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
						telemetry = { enable = false },
					},
				},
			})

			-- Dart LSP
			lspconfig.dartls.setup({
				cmd = { "dart", "language-server", "--protocol=lsp" },
				filetypes = { "dart" },
				init_options = {
					closingLabels = true,
					flutterOutline = true,
					onlyAnalyzeProjectsWithOpenFiles = true,
					outline = true,
					suggestFromUnimportedLibraries = true,
				},
				settings = {
					dart = {
						completeFunctionCalls = true,
						showTodos = true,
					},
				},
			})

			-- C# LSP
			lspconfig.omnisharp.setup({
				cmd = { "omnisharp" },
			})
		end,
	},
}
