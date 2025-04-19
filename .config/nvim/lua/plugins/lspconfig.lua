return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "pyright",
                    "jdtls",
                    "bashls",
                    "html",
                    "cssls",
                    "jsonls",
                    --"asm_lsp"
                }
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.clangd.setup ({})
            lspconfig.pyright.setup ({})
            lspconfig.bashls.setup ({})
            lspconfig.html.setup ({})
            lspconfig.cssls.setup ({})
            lspconfig.jsonls.setup ({})
            lspconfig.jdtls.setup ({})
            --lspconfig.asm_lsp.setup ({})
        end
    }
}
