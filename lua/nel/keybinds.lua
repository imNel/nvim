local nnoremap = require('nel.utils.keymap').nnoremap
local inoremap = require('nel.utils.keymap').inoremap

-- Launch telescope
nnoremap("<C-p>", "<cmd>Telescope find_files hidden=true no_ignore=true<CR>")
nnoremap("<C-k>", "<cmd>Telescope live_grep <CR>")

-- Alt Up/Down to move lines
-- TODO Make it work with highlighting lines
nnoremap("<A-k>", "<cmd>m-2<CR>")
nnoremap("<A-j>", "<cmd>m+<CR>")

-- Letting it work in insert mode, idk if i want this
-- inoremap("<A-k>", "<Esc><cmd>m-2<CR>a")
-- inoremap("<A-j>", "<Esc><cmd>m+<CR>a")

-- LSP Binds
nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
nnoremap("gr", "<cmd>lua vim.lsp.buf.references()<CR>")
nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
nnoremap("<C-w>z", "<cmd>:WindowsMaximize<CR>")
