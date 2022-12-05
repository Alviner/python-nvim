local opt = vim.opt

vim.cmd('autocmd!')
opt.termguicolors = true

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

vim.wo.relativenumber = true

opt.title = true
opt.autoindent = true
opt.hlsearch = true

opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.shell = 'zsh'
opt.backupskip = '/tmp/*,/private/tmp/*'
opt.inccommand = 'split'
opt.ignorecase = true
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.ai = true -- autoident
opt.si = true -- smart ident
opt.cc = '80' -- vertical line
opt.wrap = false -- no wrap
opt.backspace = 'start,eol,indent'
opt.undofile = true
-- opt.path:append {'**'}
-- opt.wildignore:append { '*/node_modules/*' }

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = 'set nopaste',
})

-- Add asteriks in block comments
opt.formatoptions:append { 'r' }


vim.api.nvim_create_autocmd('FileType', {
  pattern = {"*.py"},
  callback = function(bufnr)
      bufnr = bufnr or vim.api.nvim_get_current_buf()
      vim.api.nvim_buf_set_option(bufnr, 'shiftwidth', 4)
      vim.api.nvim_buf_set_option(bufnr, 'tabstop', 4)
  end,
})


vim.api.nvim_create_autocmd('FileType', {
  pattern = {"*.go"},
  callback = function(bufnr)
      bufnr = bufnr or vim.api.nvim_get_current_buf()
      vim.api.nvim_buf_set_option(bufnr, 'shiftwidth', 4)
      vim.api.nvim_buf_set_option(bufnr, 'tabstop', 4)
      vim.api.nvim_buf_set_option(bufnr, 'expandtab', false)
  end,
})
