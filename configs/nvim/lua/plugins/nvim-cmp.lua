return
{
 {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
      "hrsh7th/cmp-buffer", -- Buffer source for nvim-cmp
      "hrsh7th/cmp-path", -- Path source for nvim-cmp
      "saadparwaiz1/cmp_luasnip", -- Snippet source for nvim-cmp
      "L3MON4D3/LuaSnip", -- Snippet engine
    },
    config = function()
      require("config.cmp") -- Load cmp configuration from a separate file
    end,
  }
}

