local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').tsserver.setup {
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
  end,
}
-- require'lspconfig'.eslint.setup{}
-- require'lspconfig'.cssls.setup{}
require'lspconfig'.intelephense.setup{
  capabilities = capabilities,
}

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require'lspconfig'.gdscript.setup{
  capabilities = capabilities,
}

require'lspconfig'.sumneko_lua.setup{
  capabilities = capabilities,
}
