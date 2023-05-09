# NvChad config

## Steps

1. Install neovim
2. clone NvChad to directory `~/.config/nvim/` with `depth -1`
3. Open `nvim` and don't use default config by press `n` in the begining of nvim
4. Waiting
5. Copy all files in this folder to `~/.config/nvim/`
6. A bit of tunning and you're done 👍

## Add LSP with `lsp-config`

1. Check the LSP you want to install in [lsp-config](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)
2. Check if the lsp or lint is available in [mason](https://mason-registry.dev/registry/list)
3. If the LSP you want to install is not available in mason, you must install it by yourself
4. If it available in mason, add your lsp name in `./lua/custom/plugins.lua`

```
--snip
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "css-lsp",
        "NEW-LSP-NAME",
--snip
```

5. Then open `nvim` and type `:MasonInstallAll`
6. Waiting.jpg
7. After the lsp is installed, go edit `./lua/custom/configs/lspconfig.lua`

```
--snip
lspconfig.dockerls.setup{}
lspconfig.NEW-LSP-NAME.setup{}
--snip
```

8. If you need to add additional config, write it down in the same file at step 7
9. Lastly, to make sure highlighting is correct. Configure the `treesitter` for the language you're configuring
10. Edit this file `./lua/custom/plugins.lua`

```
--snip
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            -- defaults
            "vim",
            "lua",

            -- web dev 
            "html",
            "css",
            "javascript",
            "typescript",
            "tsx",
            "json",

            -- section
            "NEW-LANGUAGE",
--snip
```
11. Restart nvim and I believe you're done 
