--make leader space
vim.g.mapleader = ' '

--open netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

--when using these binds you can move a chunk of text and it will automatically indent
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

--makes search terms stay in the middle
vim.keymap.set('n', '<C-d>', '(C-d>zz')
vim.keymap.set('n', '<C-u>', '(C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')

--copy to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>y', '"+Y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', 'N', 'Nzzzv')

--allows paste without removing current buffer
vim.keymap.set('x', '<leader>p', '"_dP')

--allows ci without removing current paste buffer
vim.keymap.set('n', 'ci(', '"_ci(')
vim.keymap.set('n', 'ci)', '"_ci)')
vim.keymap.set('n', 'ci{', '"_ci{')
vim.keymap.set('n', 'ci}', '"_ci}')
vim.keymap.set('n', "ci'", '"_ci\'')
vim.keymap.set('n', 'ci[', '"_ci[')
vim.keymap.set('n', 'ci]', '"_ci]')
vim.keymap.set('n', 'ci"', '"_ci"')

--allows use of d without copying
vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('v', 'd', '"_d')

--inverse tab in insert mode
vim.keymap.set('i', '<S-Tab>', '<C-d>')

--tabs in visual mode
vim.keymap.set('v', '<S-Tab>', '<<')
vim.keymap.set('v', '<Tab>', '>>')
