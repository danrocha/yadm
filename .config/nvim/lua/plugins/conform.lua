return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
    },
    formatters = {
      prettier = {
        prepend_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
      },
    },
  },
}
