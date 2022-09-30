local o = vim.opt
local g = vim.g

-- Line Numbers
o.number = true
o.numberwidth = 4
o.relativenumber = true

-- Indentation
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true

-- Others
o.wrap = false
o.guicursor = "" -- Removes thin cursor
o.mouse = "a" -- Fixes mouse highlighting etc
g.mapleader = " "
