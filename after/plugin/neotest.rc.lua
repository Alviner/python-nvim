local status, neotest = pcall(require, 'neotest')
if (not status) then return end

neotest.setup {
  adapters = {
  require("neotest-python")({
      dap = { justMyCode = false },
      args = { "-vv", "--log-level", "DEBUG"},
      runner = 'pytest',
    }),
  },
  output = {
    open_on_run = true,
  },
}

local keymap = vim.api.nvim_set_keymap
keymap('n', '<leader>t', "<cmd>lua require'neotest'.run.run()<cr>", {})
keymap('n', '<leader>T', "<cmd>lua require'neotest'.run.run(vim.fn.expand('%s'))<cr>", {})
keymap('n', '<leader>ta', "<cmd>lua require'neotest'.run.run('tests')<cr>", {})
keymap('n', '<leader>p', "<cmd>lua require'neotest'.summary.toggle()<cr>", {})
keymap('n', '<leader>o', "<cmd>lua require'neotest'.output_panel.toggle()<cr>", {})
keymap('n', '<leader>d', "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", {})
