local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')
local keymap = vim.keymap.set

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end


telescope.setup {}


local opts = { noremap = true, silent = true }
keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>', opts)
keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep({ no_ignore = false, hidden = true })<cr>', opts)
keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers({ no_ignore = false, hidden = true })<cr>', opts)
keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', opts)
keymap('n', '<leader>fgc', '<cmd>lua require("telescope.builtin").git_commits()<cr>', opts)
keymap('n', '<leader>fgb', '<cmd>lua require("telescope.builtin").git_branches()<cr>', opts)
