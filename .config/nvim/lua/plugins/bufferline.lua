return {
  "akinsho/bufferline.nvim",
  version = "*", -- Use the latest version
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional: For icons
  config = function()
        require("bufferline").setup({
  options = {
    mode = "tabs", -- Show buffers as tabs
    numbers = "none", -- Do not show buffer numbers
    close_command = "bdelete! %d", -- Command to close a buffer
    right_mouse_command = "bdelete! %d", -- Right-click to close a buffer
    left_mouse_command = "buffer %d", -- Left-click to switch buffers
    middle_mouse_command = nil, -- Disable middle-click
    indicator = {
      icon = "▎", -- Indicator for the current buffer
      style = "icon",
    },
    -- buffer_close_icon = "", -- Icon for closing a buffer
    buffer_close_icon = "", -- Icon for closing a buffer
    modified_icon = "●", -- Icon for modified buffers
    close_icon = "", -- Icon for closing
    left_trunc_marker = "", -- Icon for truncating on the left
    right_trunc_marker = "", -- Icon for truncating on the right
    max_name_length = 18, -- Maximum length of buffer names
    max_prefix_length = 15, -- Maximum length of prefixes
    tab_size = 18, -- Width of each tab
    diagnostics = "nvim_lsp", -- Show LSP diagnostics in the bufferline
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "(" .. count .. ")"
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer", -- Label for NvimTree
        text_align = "left",
        separator = true,
      },
    },
    show_buffer_icons = true, -- Show file type icons
    show_buffer_close_icons = true, -- Show close icons
    show_close_icon = true, -- Show a global close icon
    show_tab_indicators = true, -- Show indicators for the active tab
    separator_style = "slant",
    persist_buffer_sort = true, -- Persist buffer sorting
    enforce_regular_tabs = false, -- Allow irregular tab sizes
    always_show_bufferline = true, -- Always show the bufferline
  },
})
  end,
}
