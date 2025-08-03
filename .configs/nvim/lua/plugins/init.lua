local on_attach = require("configs.lspconfig").on_attach
local cappabilities = require("configs.lspconfig").capabilities

return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  		"lua-language-server",
        "stylua",
  		"html-lsp",
        "css-lsp",
        "prettier",
        "ansible-language-server",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "gopls",
        "helm-ls",
        "marksman",
        "pyright",
        "bash-language-server",
        "terraform-ls",
        "rust-analyzer",
        "yaml-language-server",
        "typescript-language-server",
        "tailwindcss-language-server",
        "textlab",
        },
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        -- defaults
        "vim",
        "lua",
        "vimdoc",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        -- high-level
        "go",
        "python",

        -- low-level
        "rust",

        -- tools
        "bash",
        "terraform",
        "hcl",
        "dockerfile",
        "markdown",
        "yaml",
  		},
  	},
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },

  {
    'mrcjkb/rustaceanvim',
    ft = "rust",
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
  },

  {
    "mfussenegger/nvim-dap",
  },

  {
    "saecki/crates.nvim",
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function ()
      local M = require "nvchad.configs.cmp"
      table.insert(M.sources, {name = "crates"})
      return M
    end,
  },
}
