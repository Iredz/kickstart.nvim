return {
  {
    'Bekaboo/dropbar.nvim',
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
    opts = {
      icons = {
        kinds = {
          -- Keep symbol icons
          -- But disable directory icons
          File = false,
          Folder = false,
          -- You may need to disable other file/directory related icons
        },
      },
      menu = {
        -- Disable directory entries in the menu
        entry_mappings = {
          preview = false, -- if you don't want directory previews
        },
      },
      sources = {
        -- Configure which sources are enabled
        path = {
          enabled = false, -- Disable path-based entries
        },
        -- Make sure symbol sources remain enabled
        lsp = {
          enabled = true,
        },
        -- Add other symbol sources you want to keep
      },
    },
    -- enabled = false,
    config = function()
      local dropbar_api = require 'dropbar.api'
      vim.keymap.set('n', '<Leader>DP;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
      vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
      vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
    end,
  },
}
