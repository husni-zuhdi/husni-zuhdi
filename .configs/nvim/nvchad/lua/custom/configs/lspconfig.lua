local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.gopls.setup {}
lspconfig.tsserver.setup{}
lspconfig.terraformls.setup{}
lspconfig.ansiblels.setup {}
lspconfig.bashls.setup {}
lspconfig.docker_compose_language_service.setup{}
lspconfig.dockerls.setup{}
