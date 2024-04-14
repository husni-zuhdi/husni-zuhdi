require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- tmux neovim mapping
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "tmux nvim - window left"})
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "tmux nvim - window right"})
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "tmux nvim - window down"})
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "tmux nvim - window up"})

-- DAP mapping
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "DAP - toggle breakpoint"})
map("n", "<leader>dus", function()
    local widgets = require('dap.ui.widgets');
    local sidebar = widgets.sidebar(widgets.scopes);
    sidebar.open();
  end,
  { desc = "DAP - open debugging sidebar" }
)

-- crates mapping
map("n", "<leader>rcu", function()
    require("crates").upgrade_all_crates()
  end,
  { desc = "crates - upgrade all crates" }
)

-- custom lspconfig mapping
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
map('n', '<space>e', vim.diagnostic.open_float)
map('n', '[d', vim.diagnostic.goto_prev)
map('n', ']d', vim.diagnostic.goto_next)
map('n', '<space>q', vim.diagnostic.setloclist)

-- custom lspconfig autocommands
-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    map('n', 'gD', vim.lsp.buf.declaration, opts)
    map('n', 'gd', vim.lsp.buf.definition, opts)
    map('n', 'K', vim.lsp.buf.hover, opts)
    map('n', 'gi', vim.lsp.buf.implementation, opts)
    map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    map('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    map('n', '<space>D', vim.lsp.buf.type_definition, opts)
    map('n', '<space>rn', vim.lsp.buf.rename, opts)
    map({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    map('n', 'gr', vim.lsp.buf.references, opts)
    map('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- Terraform LS configs
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = {'*.tf', '*.tfvars'},
  callback = function ()
    vim.lsp.buf.format()
  end,
})

-- Bash LS configs
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'sh',
  callback = function()
    vim.lsp.start({
      name = 'bash-language-server',
      cmd = { 'bash-language-server', 'start' },
    })
  end,
})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
