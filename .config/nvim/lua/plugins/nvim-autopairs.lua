return {
  "windwp/nvim-autopairs", -- Plugin name
  event = "InsertEnter", -- Load only when entering insert mode
  config = function()
    -- Import the plugin
    local npairs = require("nvim-autopairs")

    -- Enable nvim-autopairs
    npairs.setup({
      check_ts = true, -- Use Tree-sitter to detect context (e.g., no auto-pairs inside comments)
      ts_config = {
        lua = { "string" }, -- Disable auto-pairs in Lua strings
        javascript = { "template_string" }, -- Disable auto-pairs in JS template strings
      },
    })

    -- Optional: Integrate with nvim-cmp for better completion behavior
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
