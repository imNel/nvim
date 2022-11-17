local nmap = require('nel.utils.keymap').nmap
local nnoremap = require('nel.utils.keymap').nnoremap
local inoremap = require('nel.utils.keymap').inoremap
local vnoremap = require('nel.utils.keymap').vnoremap
local xnoremap = require('nel.utils.keymap').xnoremap

-- Launch telescope
nnoremap("<C-p>", "<cmd>Telescope find_files <CR>")
nnoremap("<C-space>", "<cmd>Telescope live_grep <CR>")
nnoremap("<leader>b", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>e", "<cmd>Explore<CR>")

-- -- Alt Up/Down to move lines
-- nnoremap("<A-k>", "<cmd>m-2<CR>")
-- nnoremap("<A-j>", "<cmd>m+<CR>")

-- LSP Binds
nnoremap("gd", "<cmd>Telescope lsp_definitions<CR>")
nnoremap("gh", "<cmd>lua vim.lsp.buf.hover()<CR>")
nnoremap("gr", "<cmd>Telescope lsp_references<CR>")
nnoremap("gi", "<cmd>Telescope lsp_implementations<CR>")
nnoremap("<leader>w", "<cmd>TroubleToggle<CR>")
nnoremap("<leader>f", "<cmd>lua vim.lsp.buf.format{async=true}<CR>")

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

-- Git
local g = "<leader>g" 
nnoremap(g.."b", "<cmd>Telescope git_branches<CR>")
nnoremap(g.."s", "<cmd>Telescope git_status<CR>")
nnoremap(g.."u", "<cmd>GitBlameOpenCommitURL<CR>")
nnoremap(g.."?", "<cmd>GitBlameToggle<CR>")
