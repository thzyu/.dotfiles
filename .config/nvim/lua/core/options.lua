-- Leader and Environment
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- Display and UI
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.termguicolors = true
vim.o.showmode = false
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.o.signcolumn = "yes"

-- Editing and Input
vim.o.mouse = "a"
vim.o.breakindent = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.completeopt = "menuone,noselect"

-- Search and Navigation
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.scrolloff = 6
vim.o.sidescrolloff = 8
vim.o.inccommand = "split"

-- Window and Buffer Management
vim.o.splitbelow = true
vim.o.splitright = true

-- File and Undo Management
vim.o.writebackup = false
vim.o.undofile = true

-- Performance and Timing
vim.o.updatetime = 250
vim.o.timeoutlen = 300
