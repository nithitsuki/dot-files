return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Optional dependency for icons
  },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "16color",
      },
      sections = {
        lualine_a = {
          {
            "filename",
            path = 1,
          },
        },
      },
    })
  end,
}
