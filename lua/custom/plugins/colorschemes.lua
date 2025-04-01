return {
  {
    'marko-cerovac/material.nvim',
    config = function()
      require('material').setup {

        contrast = {
          terminal = false, -- Enable contrast for the built-in terminal
          sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
          floating_windows = false, -- Enable contrast for floating windows
          cursor_line = false, -- Enable darker background for the cursor line
          lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
          non_current_windows = false, -- Enable contrasted background for non-current windows
          filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
        },

        styles = { -- Give comments style such as bold, italic, underline etc.
          comments = { --[[ italic = true ]]
          },
          strings = { --[[ bold = true ]]
          },
          keywords = { --[[ underline = true ]]
          },
          functions = { --[[ bold = true, undercurl = true ]]
          },
          variables = {},
          operators = {},
          types = {},
        },

        plugins = { -- Uncomment the plugins that you use to highlight them
          -- Available plugins:
          -- "coc",
          -- "colorful-winsep",
          'dap',
          -- "dashboard",
          -- "eyeliner",
          'fidget',
          -- "flash",
          'gitsigns',
          -- "harpoon",
          -- "hop",
          -- "illuminate",
          -- "indent-blankline",
          -- "lspsaga",
          'mini',
          -- "neogit",
          -- "neotest",
          'neo-tree',
          -- "neorg",
          -- "noice",
          -- "nvim-cmp",
          -- "nvim-navic",
          -- "nvim-tree",
          'nvim-web-devicons',
          -- "rainbow-delimiters",
          -- "sneak",
          'telescope',
          'trouble',
          -- "which-key",
          -- "nvim-notify",
        },

        disable = {
          colored_cursor = false, -- Disable the colored cursor
          borders = false, -- Disable borders between vertically split windows
          background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
          term_colors = false, -- Prevent the theme from setting terminal colors
          eob_lines = false, -- Hide the end-of-buffer lines
        },

        high_visibility = {
          lighter = false, -- Enable higher contrast text for lighter style
          darker = false, -- Enable higher contrast text for darker style
        },

        lualine_style = 'default', -- Lualine style ( can be 'stealth' or 'default' )

        async_loading = true, -- Load parts of the theme asynchronously for faster startup (turned on by default)

        custom_colors = nil, -- If you want to override the default colors, set this to a function

        custom_highlights = {}, -- Overwrite highlights with your own
      }
    end,
  },
  {
    'comfysage/evergarden',
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    opts = {
      transparent_background = false,
      contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
      overrides = {}, -- add custom overrides
    },
  },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'cpea2506/one_monokai.nvim',
    opts = {
      transparent = true,
      italics = true,
    },
  },
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_enable_italic = true
    end,
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_better_performance = 1,
      vim.g.gruvbox_material_enable_italic == true
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_background = 'hard' --- hard medium soft
      vim.g.gruvbox_material_foreground = 'material'  -- material mix original
      vim.g.gruvbox_material_cursor = 'aqua'  
    end,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').load()
      require('nordic').setup {
        transparent = {
          bg = false,
          float = false,
        },
      }
    end,
  },
  { 'shaunsingh/nord.nvim', lazy = false, priority = 1000 },
  { 'rose-pine/neovim', name = 'rose-pine', opts = {
    styles = {
      transparency = false,
      bold = true,
      italics = true
    },
  } },
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { italic = true },
      },
    },
  },
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup {}
    end,
  },
  {
    'olimorris/onedarkpro.nvim',
    priority = 1000,
    config = function()
      require('onedarkpro').setup {
        styles = {
          types = 'NONE',
          methods = 'bold',
          numbers = 'NONE',
          strings = 'NONE',
          comments = 'italic',
          keywords = 'bold,italic',
          constants = 'italic',
          functions = 'bold,italic',
          operators = 'NONE',
          variables = 'NONE',
          parameters = 'NONE',
          conditionals = 'italic',
          virtual_text = 'NONE',
        },
      }
    end,
  },
}
