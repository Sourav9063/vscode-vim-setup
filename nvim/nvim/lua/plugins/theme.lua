return {
  --   {
  --     "LazyVim/LazyVim",
  --     opts = {
  --       colorscheme = function()
  --         require("catppuccin").load()
  --       end,
  --     },
  --   }, {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     term_colors = true,
  --     transparent_background = false,
  --     -- styles = {
  --     --   comments = {},
  --     --   conditionals = {},
  --     --   loops = {},
  --     --   functions = {},
  --     --   keywords = {},
  --     --   strings = {},
  --     --   variables = {},
  --     --   numbers = {},
  --     --   booleans = {},
  --     --   properties = {},
  --     --   types = {},
  --     -- },
  --     color_overrides = {
  --       mocha = {
  --         base = "#000000",
  --         mantle = "#000000",
  --         -- crust = "#000000",
  --       },
  --     },
  --     integrations = {
  --       telescope = {
  --         enabled = true,
  --         style = "nvchad",
  --       },
  --       dropbar = {
  --         enabled = true,
  --         color_mode = true,
  --       },
  --     },
  --   },
  -- },
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup({
        -- ...
      })

      -- vim.cmd('colorscheme github_dark')
      vim.cmd('colorscheme github_dark_default')
    end,
  }
}
