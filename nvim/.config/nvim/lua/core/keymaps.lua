vim.g.mapleader = ' '
vim.g.maplocalleader = ' ' 
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', { noremap = true, silent = true, desc="" })
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', { noremap = true, silent = true, desc=""})

vim.keymap.set('n', 'x', '"_x', { noremap = true, silent = true, desc=""}) -- delete single char without overwriting register
--#vim.keymap.set('n', 'p', '"_dP', { noremap = true, silent = true, desc=""})

vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true, desc=""})
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true, desc=""})

vim.keymap.set('n', 'n', 'nzzzv', { noremap = true, silent = true, desc=""})
vim.keymap.set('n', 'N', 'Nzzzv', { noremap = true, silent = true, desc=""})

vim.keymap.set('n', '<leader>ikm', 'ovim.keymap.set(\'n\', \'\', \'\', { noremap = true, silent = true, desc=""})<ESC>3ba')

