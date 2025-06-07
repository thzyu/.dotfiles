-- Define default options for keymappings
local opts = { noremap = true, silent = true }

-- General Editing
vim.keymap.set('n', 'Q', '<nop>', opts) -- Disable Ex mode
vim.keymap.set('n', 'x', '"_x', opts) -- Delete character without copying to register
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', opts) -- Clear search highlights

-- File Operations
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', opts) -- Save file
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w<CR>', opts) -- Save without auto-formatting
vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', opts) -- Quit file

-- Navigation
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts) -- Scroll down and center
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts) -- Scroll up and center
vim.keymap.set('n', 'n', 'nzzzv', opts) -- Next search result and center
vim.keymap.set('n', 'N', 'Nzzzv', opts) -- Previous search result and center

-- Buffer Management
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts) -- Next buffer
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts) -- Previous buffer
vim.keymap.set('n', '<leader>b', '<cmd>enew<CR>', opts) -- New buffer
vim.keymap.set('n', '<leader>x', ':confirm bdelete<CR>', opts) -- Close buffer with confirmation

-- Window Management
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts) -- Move to left window
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts) -- Move to lower window
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts) -- Move to upper window
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts) -- Move to right window
vim.keymap.set('n', '<leader>v', '<C-w>v', opts) -- Split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- Split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- Equalize split sizes
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- Close current split
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts) -- Resize window up
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts) -- Resize window down
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts) -- Resize window left
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts) -- Resize window right

-- Visual Mode
vim.keymap.set('v', '<', '<gv', opts) -- Indent left and stay in visual mode
vim.keymap.set('v', '>', '>gv', opts) -- Indent right and stay in visual mode
vim.keymap.set('v', 'p', '"_dP', opts) -- Paste without overwriting yank register
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", opts) -- Move selected lines down
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", opts) -- Move selected lines up

-- Appearance
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts) -- Toggle line wrapping

-- Diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Yank Highlighting
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

