local opt = vim.opt
local o = vim.o
local g = vim.g

-- General Options

o.cursorline = true
o.termguicolors = true
o.laststatus = 3
o.timeoutlen = 400
o.mouse = ""

-- Display
o.number = true
o.relativenumber = true
o.signcolumn = "yes"
o.colorcolumn = "80"
o.scrolloff = 8
o.splitbelow = true
o.splitright = true
-- opt.fillchars = { eob = " " }
opt.pumheight = 10
opt.pumblend = 10
opt.winblend = 10

-- Search
o.ignorecase = true
o.smartcase = true

-- Tabs and Indentation
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.smartindent = true

-- Backup and Swap
o.undofile = true
o.backup = false
o.writebackup = false
o.swapfile = false

-- Performance
o.lazyredraw = true
o.updatetime = 200
opt.shortmess:append("cI")

-- Folding
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- -- Diagnostics
-- vim.diagnostic.config({
--     virtual_text = { spacing = 4, prefix = "●" },
--     signs = true,
--     underline = true,
--     update_in_insert = false,
--     severity_sort = true,
-- })

-- Path for Mason binaries
local is_windows = vim.fn.has("win32") ~= 0
local sep = is_windows and "\\" or "/"
local delim = is_windows and ";" or ":"
vim.env.PATH = table.concat({ vim.fn.stdpath("data"), "mason", "bin" }, sep) .. delim .. vim.env.PATH

-- Disable unused providers
g.loaded_python3_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

-- Default shell
o.shell = "zsh"

opt.backupdir = vim.fn.stdpath("data") .. "/backup//"
opt.undodir = vim.fn.stdpath("data") .. "/undo//"
