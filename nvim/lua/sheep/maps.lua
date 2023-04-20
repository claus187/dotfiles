-- keycuts
vim.g.mapleader = ","
local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>n', ':tabnew<CR>', { noremap = true, silent = true })
keymap('n', '<leader>j', ':tabprevious<CR>', { noremap = true, silent = true })
keymap('n', '<leader>k', ':tabnext<CR>', { noremap = true, silent = true })

-- move to specific tab
keymap('n', '<leader>1', ':tabn 1<CR>', { noremap = true, silent = true })
keymap('n', '<leader>2', ':tabn 2<CR>', { noremap = true, silent = true })
keymap('n', '<leader>3', ':tabn 3<CR>', { noremap = true, silent = true })
keymap('n', '<leader>4', ':tabn 4<CR>', { noremap = true, silent = true })
keymap('n', '<leader>5', ':tabn 5<CR>', { noremap = true, silent = true })
keymap('n', '<leader>6', ':tabn 6<CR>', { noremap = true, silent = true })
keymap('n', '<leader>7', ':tabn 7<CR>', { noremap = true, silent = true })
keymap('n', '<leader>8', ':tabn 8<CR>', { noremap = true, silent = true })
keymap('n', '<leader>9', ':tabn 9<CR>', { noremap = true, silent = true })

-- split view
keymap('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true })
keymap('n', '<leader>h', ':split<CR>', { noremap = true, silent = true })
keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true }) -- move up 
keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true }) -- move down 
keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true }) -- move right
keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true }) -- move left

-- resize not working
keymap('n', '<leader>+', '<C-W><+><CR>', { noremap = true, silent = true }) -- + height
keymap('n', '<leader>-', '<C-W><-><CR>', { noremap = true, silent = true }) -- - height
keymap('n', '<leader><', '<C-W><<><CR>', { noremap = true, silent = true }) -- + width
keymap('n', '<leader>>', '<C-W><>><CR>', { noremap = true, silent = true }) -- - width