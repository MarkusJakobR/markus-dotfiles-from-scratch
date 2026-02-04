return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" }, -- format on save
    opts = {
      notify_on_error = false,

      format_on_save = function(bufnr)
        -- disable for big files
        if vim.api.nvim_buf_line_count(bufnr) > 5000 then
          return
        end
        return { timeout_ms = 2000, lsp_fallback = true }
      end,

      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        sh = { "shfmt" },
        c = { "clang_format" },
        cpp = { "clang_format" },
      },
    },
  },
}

