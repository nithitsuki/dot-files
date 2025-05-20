return {
  "nvim-tree/nvim-tree.lua",
  version = "^1.0",
  lazy = true,
  cmd = "NvimTreeToggle",
  keys = { "<c-b>" },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })

    -- Keymap for NvimTree
    vim.keymap.set("n", "<c-b>", ":NvimTreeFindFile<CR>")
  end,
}
