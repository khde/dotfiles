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
          "pyright"
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
    end
  }
}
