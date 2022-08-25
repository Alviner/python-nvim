local status, hop = pcall(require, 'hop')
if (not status) then return end

hop.setup { keys = 'etovxqpdygfblzhckisuran' }

local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>w', "<cmd>lua require'hop'.hint_words()<cr>", {})
keymap('n', '<leader>l', "<cmd>lua require'hop'.hint_lines()<cr>", {})
