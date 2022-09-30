local nmap = require('nel.utils.keymap').nmap
local nnoremap = require('nel.utils.keymap').nnoremap
local inoremap = require('nel.utils.keymap').inoremap
local vnoremap = require('nel.utils.keymap').vnoremap
local xnoremap = require('nel.utils.keymap').xnoremap

-- Launch telescope
nnoremap("<C-p>", "<cmd>Telescope find_files <CR>")
nnoremap("<C-space>", "<cmd>Telescope live_grep <CR>")

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
-- NOTE: Magic keybinds for formatting in plugins/config/null-ls.lua

-- Window Keybinds
nnoremap("<C-w>z", "<cmd>:WindowsMaximize<CR>")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Clipboard
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")
