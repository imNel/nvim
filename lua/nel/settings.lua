local o = vim.opt
local g = vim.g

-- Line Numbers
o.number = true
o.numberwidth = 4
o.relativenumber = true

-- Netrw
g.netrw_keepdir = 0
g.netrw_banner = 0
g.netrw_localcopydircmd = 'cp -r'

-- Indentation
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true

-- Window behaviour
o.splitright = true
o.splitbelow = true

-- Others
o.wrap = false
-- o.guicursor = "" -- Removes thin cursor
o.mouse = "a" -- Fixes mouse highlighting etc
o.scrolloff = 8
g.mapleader = " "
o.termguicolors = true
