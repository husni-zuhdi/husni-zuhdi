local on_attach = require("plugins.configs.lspconfig").on_attach
local cappabilities = require("plugins.configs.lspconfig").capabilities

local options = {
  server = {
    on_attach = on_attach,
    cappabilities = cappabilities,
  },
}

return options
