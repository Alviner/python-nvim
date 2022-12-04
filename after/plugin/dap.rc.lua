local status, dap = pcall(require, 'dap')
if (not status) then return end

dap.adapters.python = {
  type = 'executable',
  command = 'python',
  args = { '-m', 'debugpy.adapter' },
}

local dap_config = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap('n', '<F5>', "<cmd>lua require'dap'.continue()<cr>", dap_config)
keymap('n', '<F10>', "<cmd>lua require'dap'.step_over()<cr>", dap_config)
keymap('n', '<F11>', "<cmd>lua require'dap'.step_into()<cr>", dap_config)
keymap('n', '<F12>', "<cmd>lua require'dap'.step_out()<cr>", dap_config)
keymap('n', '<leader>b', "<cmd>lua require'dap'.toggle_breakpoint()<cr>", dap_config)
keymap('n', '<leader>B', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", dap_config)
keymap('n', '<leader>lp', "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", dap_config)
keymap('n', '<leader>ro', "<cmd>lua require'dap'.repl.toggle()<cr>", dap_config)
keymap('n', '<leader>rl', "<cmd>lua require'dap'.run_last()<cr>", dap_config)


vim.fn.sign_define('DapBreakpoint', { text='🛑', texthl='', linehl='', numhl='' })
vim.fn.sign_define('DapBreakpointCondition', { text='🛑', texthl='', linehl='', numhl='' })
