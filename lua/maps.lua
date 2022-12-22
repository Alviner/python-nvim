local keymap = vim.keymap

-- Do not yank with replacement/changing/deleting
keymap.set('n', 'x', '"_x')
keymap.set('n', 'c', '"_c')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split panel
keymap.set('n', 'sh', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Pane navigation
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('n', 'K', '<C-w>k')
keymap.set('n', 'H', '<C-w>h')
keymap.set('n', 'J', '<C-w>j')
keymap.set('n', 'L', '<C-w>l')

-- Resize pane
keymap.set('n', 'ah', '<C-w><')
keymap.set('n', 'al', '<C-w>>')
keymap.set('n', 'aj', '<C-w>+')
keymap.set('n', 'ak', '<C-w>-')

-- Close pane
keymap.set('n', '<leader>q', ':bd<Return>', { silent = true })


keymap.set('n', '<leader>re', ':diffg RE<Return>', { silent = true })
keymap.set('n', '<leader>ba', ':diffg BA<Return>', { silent = true })
keymap.set('n', '<leader>lo', ':diffg LO<Return>', { silent = true })

keymap.set('n', '<leader>gg', ':LazyGit<Return>', { silent = true })
