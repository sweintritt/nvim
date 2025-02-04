-- Fancy and Blazing Fast start screen plugin of neovim
-- https://github.com/nvimdev/dashboard-nvim
return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
