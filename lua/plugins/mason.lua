return {
  {
    "mason-org/mason.nvim",
    opts = {}
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
}

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

      -- Lua (important for Neovim config)
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })

    end,
  },

}
