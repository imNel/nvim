local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "sumneko_lua", "tsserver" },
}

require('lspconfig').tsserver.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
}
require'lspconfig'.eslint.setup {
  capabilities = capabilities,
}

require'lspconfig'.tailwindcss.setup {
  capabilities = capabilities,
}

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require'lspconfig'.gdscript.setup {
  capabilities = capabilities,
}

require'lspconfig'.sumneko_lua.setup {
  capabilities = capabilities,
}

require'lspconfig'.astro.setup {
  capabilities = capabilities,
}

require'lspconfig'.svelte.setup {
  capabilities = capabilities,
}


vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})
