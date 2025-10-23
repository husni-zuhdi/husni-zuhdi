local capabilities = require("nvchad.configs.lspconfig").capabilities

-- Enable completion for html and css
-- Ref: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#html
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
  pyright = {},
  gopls = {},
  ansiblels = {},
  bashls = {},
  docker_compose_language_service = {},
  dockerls = {},
  marksman = {},
  ts_ls = {},
  html = {
    filetypes = { "html", "templ", "htmldjango" },
  },
  cssls = {
    filetypes = { "html", "templ", "htmldjango", "css", "scss", "less" },
  },
  tailwindcss = {
    workspace_required = true,
    filetypes = {
      "django-html",
      "htmldjango",
      "gohtml",
      "gohtmltmpl",
      "html",
      "htmlangular",
      "markdown",
      "mdx",
      "css",
      "less",
      "postcss",
      "sass",
      "scss",
      "javascript",
      "typescript",
      "vue",
      "svelte",
      "templ",
    },
    settings = {
      tailwindCSS = {
        classAttributes = { "class", "className", "class:list", "classList", "ngClass", "@apply.*" },
        includeLanguages = {
          eelixir = "html-eex",
          elixir = "phoenix-heex",
          eruby = "erb",
          heex = "phoenix-heex",
          htmlangular = "html",
          templ = "html",
        },
        lint = {
          cssConflict = "warning",
          invalidApply = "error",
          invalidConfigPath = "error",
          invalidScreen = "error",
          invalidTailwindDirective = "error",
          invalidVariant = "error",
          recommendedVariantOrder = "warning",
        },
        validate = true,
      },
    },
  },
  terraformls = {
    filetypes = { "terraform", "terraform-vars", "hcl" },
  },
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end
