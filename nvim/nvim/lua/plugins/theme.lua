-- Palettes are the base color defines of a colorscheme.
-- You can override these palettes for each colorscheme defined by github-theme.
local palettes = {
  -- Everything defined under `all` will be applied to each style.
  all = {
    -- Each palette defines these colors:
    --   black, gray, blue, green, magenta, pink, red, white, yellow, cyan
    --
    -- These colors have 2 shades: base, and bright

    -- Passing a string sets the base
    red = '#ff0000',
  },
  github_dark = {
    -- Defining multiple shades is done by passing a table
    red = {
      base = '#8e1519',
      bright = '#ee0000',
    },
  },
  github_dark_default = {
    bg0 = '#ff0000',  -- Black background
    bg1 = '#00ff00',  -- Alt backgrounds (floats, statusline, ...)
    bg3 = '#121820',  -- 55% darkened from stock
    sel0 = '#131b24', -- 55% darkened from stock
  },
  github_dark_dimmed = {
    -- A palette also defines the following:
    --   bg0, bg1, bg2, bg3, bg4, fg0, fg1, fg2, fg3, sel0, sel1, comment
    --
    -- These are the different foreground and background shades used by the theme.
    -- The base bg and fg is 1, 0 is normally the dark alternative. The others are
    -- incrementally lighter versions.
    bg1 = '#444c56',

    -- sel is different types of selection colors.
    sel0 = '#adbac7', -- Popup bg, visual selection bg
    sel1 = '#22272e', -- Popup sel bg, search bg

    -- comment is the definition of the comment color.
    comment = '#636e7b',
  },
}
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
        palettes = palettes,
        options = {
          styles = {
            comments = 'italic',
            keywords = 'bold',
            types = 'italic,bold',
          }
        },
      })

      -- vim.cmd('colorscheme github_dark')
      vim.cmd('colorscheme github_dark_default')
    end,
  }
}
