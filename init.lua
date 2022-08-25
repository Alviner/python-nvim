require('base')
require('highlights')
require('maps')
require('plugins')

local has = function (component)
    return vim.fn.has(component) == 1 
end

local is_mac = has 'macunix'

if is_mac then
    require('macos')
end
