return
    -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim", -- Optional: For managing LSP servers
      "williamboman/mason-lspconfig.nvim", -- Optional: Integrates Mason with lspconfig
    },
    config = function()
      require("config.lsp") -- Load LSP configuration from a separate file
    end,
  }
