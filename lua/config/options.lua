local opt = vim.opt
local g = vim.g
local api = vim.api

-- Leader keys
g.mapleader = " "
g.maplocalleader = " "

-- Nerd font flag (used by some plugins)
g.have_nerd_font = true

-- Indentation
opt.expandtab = true -- use spaces instead of tabs
opt.tabstop = 2 -- spaces per tab
opt.softtabstop = 2
opt.shiftwidth = 2
opt.breakindent = true -- wrapped lines keep indentation

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Mouse support
opt.mouse = "a"

-- Clipboard (after startup)
vim.schedule(function()
	opt.clipboard = "unnamedplus"
end)

-- Undo history
opt.undofile = true

-- Search behavior
opt.ignorecase = true
opt.smartcase = true

-- Show which cursor your line is on
opt.cursorline = true

-- Minimum number of scroll lines
opt.scrolloff = 10

-- Raise a dialog when have unsaved changes
opt.confirm = true

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

opt.fillchars = "eob: "
opt.signcolumn = "yes"
opt.cursorline = true
opt.showmode = false

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
