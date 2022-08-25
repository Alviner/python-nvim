local status, packer = pcall(require, 'packer')

if (not status) then
    print('Packer is not installed')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use {
        'nvim-lualine/lualine.nvim', -- StatusLine
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'neoclide/coc.nvim',
        branch = 'release',
        run = 'yarn install --frozen-lockfile',
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        tag = 'nightly',
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = {'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'tpope/vim-obsession'
    use 'tpope/vim-surround'
    use {
        'phaazon/hop.nvim',
        branch = 'v2',
    }
    use 'mhinz/vim-startify'
    use 'cappyzawa/trim.nvim'
    use 'norcalli/nvim-colorizer.lua'
    use 'lewis6991/gitsigns.nvim'
end)
