local lspconfig = require("lspconfig")

-- Optional: Use Mason to install and manage LSP servers
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "ts_ls", "clangd", "jdtls", "rust_analyzer" }, -- Add your preferred LSP servers
})

-- Function to attach LSP keybindings and settings
local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, noremap = true, silent = true }

  -- Keybindings
  vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
  vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
end

-- Default capabilities for LSP
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Configure specific LSP servers
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Configure clangd for C/C++
lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- Configure jdtls for Java
lspconfig.jdtls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "jdtls" }, -- Ensure jdtls is in your PATH
})
