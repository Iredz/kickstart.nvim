return {
  { 'rose-pine/neovim', name = 'rose-pine', priority = 1000 },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  -- Using Lazy
  {
    'navarasu/onedark.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        -- style = 'darker'
      }
      -- require('onedark').load()
    end,
  },
  { 'ellisonleao/gruvbox.nvim', priority = 1000, config = true, opts = ... },
  {
    'loctvl842/monokai-pro.nvim',
    lazy = false,
    priority = 1000,
    -- config = function()
    --   require("monokai-pro").setup()
    --   vim.cmd.colorscheme("monokai-pro")
    -- end,
    opts = {},
  },
  {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('everforest').setup {
        -- Your config here
      }
    end,
  },
}
