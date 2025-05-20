return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules", ".git" },
      },
    })

    -- Keymaps for Telescope
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<c-p>", builtin.find_files, {})
    vim.keymap.set("n", "<Space><Space>", builtin.oldfiles, {})
    vim.keymap.set("n", "<Space>fg", builtin.live_grep, {})
    vim.keymap.set("n", "<Space>fh", builtin.help_tags, {})
  end,
}
