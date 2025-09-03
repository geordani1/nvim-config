-- Set leader key
vim.g.mapleader = ' '

vim.cmd [[
  hi Normal guibg=NONE ctermbg=NONE
  hi NormalNC guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
]]


-- Display settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.termguicolors = true
vim.opt.wildmenu = true

-- Text editing and formatting
vim.opt.tabstop = 4
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.textwidth = 80
vim.opt.wrap = false

-- Window and buffer behavior
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 8

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.clipboard = 'unnamedplus'

-- Timing
vim.opt.timeoutlen = 300

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Buffer navigation
vim.keymap.set('n', '<S-l>', ':bnext<CR>')
vim.keymap.set('n', '<S-h>', ':bprevious<CR>')

-- Visual mode enhancements
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Scrolling improvements
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- save file
vim.keymap.set('n', '<C-s>', ':w<CR>', { silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { silent = true })

-- Search/highlight clearing
vim.keymap.set('n', '<Esc>', ':noh<CR>', { silent = true })

-- exit the terminal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

-- open a terminal
vim.keymap.set('n', '<leader>t', ':5split | terminal <CR>', { noremap = true } )

-- Plugin setup and colorscheme
vim.pack.add({
    { src = 'https://github.com/bluz71/vim-moonfly-colors' },
    { src = 'https://github.com/echasnovski/mini.nvim' },
    { src = 'https://github.com/nvim-lua/plenary.nvim'},
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter'},
    { src = 'https://github.com/nvim-telescope/telescope.nvim'},

})

require'nvim-treesitter.configs'.setup({})

-- colorscheme 
vim.cmd('colorscheme moonfly')


-- mini-nivm
require('mini.surround').setup({})


-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })



