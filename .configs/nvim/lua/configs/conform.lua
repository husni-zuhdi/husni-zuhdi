local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    -- javascript = { "prettier" },
    -- typescript = { "prettier" },
    rust = { "rustfmt" },
    htmldjango = { "djlint" },
    jinja = { "djlint" },
  },
  formatters = {
    djlint = {
      command = "djlint",
      args = { "--reformat", "--quiet", "-" },
      stdin = true,
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
