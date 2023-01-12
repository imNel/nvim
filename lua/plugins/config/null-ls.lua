local null_ls = require("null-ls")

local sources = {
  null_ls.builtins.formatting.prettier.with({
    extra_filetypes = { "astro" },
  }),
}

null_ls.setup({
  sources = sources
})
