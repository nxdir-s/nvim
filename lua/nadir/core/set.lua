local opt = vim.opt

-- cursor line
opt.guicursor = ""

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.swapfile = false
opt.backup = false

-- appearance
opt.termguicolors = false
opt.signcolumn = "yes"
opt.background = "dark"

opt.updatetime = 50

-- Set highlight on search
opt.hlsearch = false

-- backspace
opt.backspace = "indent,eol,start"

opt.scrolloff = 8
vim.g.mapleader = " "

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
