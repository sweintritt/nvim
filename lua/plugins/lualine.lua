return {
    'nvim-lualine/lualine.nvim',
    name = "lualine",
    priority = 1000,
    init = function()
	require('lualine').setup {
	    options = { theme = 'onedark' }
	}
    end,
    dependencies = { 
    	'nvim-tree/nvim-web-devicons'
    }
}
