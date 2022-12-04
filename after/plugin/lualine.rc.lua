local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {

  options = {
    icons_enabled = true,
    theme = 'catppuccin',
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = {
      'filename',
      'branch',
      'diff',
      { 'diagnostics', sources = { 'nvim_diagnostic', 'coc' } },
    },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sessions = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_statud = true,
      path = 1  -- relative
    }},
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = { 'fugitive' },
}
