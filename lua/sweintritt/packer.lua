--- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                          , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- My vim plugins
-- Plugin 'ctrlpvim/ctrlp.vim'
-- Plugin 'fatih/vim-go'
-- Plugin 'joshdick/onedark.vim'
-- Plugin 'preservim/nerdcommenter'
-- Plugin 'preservim/nerdtree'
-- Plugin 'puremourning/vimspector'
-- Plugin 'ryanoasis/vim-devicons'
-- Plugin 'tpope/vim-commentary'
-- Plugin 'tpope/vim-fugitive'
-- Plugin 'tpope/vim-surround'
-- Plugin 'ycm-core/YouCompleteMe'
-- Plugin 'vim-airline/vim-airline'
-- Plugin 'vim-airline/vim-airline-themes'
-- Plugin 'vim-syntastic/syntastic'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lua'},
            {'saadparwaiz1/cmp_luasnip'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
end)
