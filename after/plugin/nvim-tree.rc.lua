local status, nvimtree = pcall(require, 'nvim-tree')

if (not status) then return end

nvimtree.setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
