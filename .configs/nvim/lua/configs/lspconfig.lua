-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
    "pyright",
    "gopls",
    "ansiblels",
    "bashls",
    "docker_compose_language_service",
    "dockerls",
    "marksman",
    "ts_ls",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end


-- terraform_ls
lspconfig.terraformls.setup{
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = {"terraform", "terraform-vars", "hcl"},
}

-- tailwindcss
lspconfig.tailwindcss.setup{}

-- html
-- Enable completion for html and css
-- Ref: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#html
capabilities.textDocument.completion.completionItem.snippetSupport = true
lspconfig.html.setup{
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "html", "templ", "htmldjango" }
}

-- cssls
lspconfig.cssls.setup{
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "html", "templ", "htmldjango", "css", "scss", "less" }
}

return {on_attach, capabilities}
