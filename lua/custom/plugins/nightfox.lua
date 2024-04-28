return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    "EdenEast/nightfox.nvim",
    -- lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    -- opts = {},
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.o.background = "dark"
      -- vim.cmd.colorscheme 'nightfox'
      -- vim.cmd.colorscheme 'terafox'
      -- vim.cmd.colorscheme 'nordfox'
      vim.cmd.colorscheme 'duskfox'

      -- Just in case I want a light theme and hate myself
      -- vim.cmd.colorscheme 'dayfox'
      -- vim.cmd.colorscheme 'dawnfox'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,

    config = function()
      -- Default options
      require('nightfox').setup({
        options = {
          -- Compiled file's destination location
          compile_path = vim.fn.stdpath("cache") .. "/nightfox",
          compile_file_suffix = "_compiled", -- Compiled file suffix
          transparent = false,               -- Disable setting background
          terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
          dim_inactive = false,              -- Non focused panes set to alternative background
          module_default = true,             -- Default enable value for modules
          colorblind = {
            enable = false,                  -- Enable colorblind support
            simulate_only = false,           -- Only show simulated colorblind colors and not diff shifted
            severity = {
              protan = 0,                    -- Severity [0,1] for protan (red)
              deutan = 0,                    -- Severity [0,1] for deutan (green)
              tritan = 0,                    -- Severity [0,1] for tritan (blue)
            },
          },
          styles = {           -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
          },
          inverse = { -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
          },
          modules = { -- List of various plugins and additional options
            -- ...
          },
        },
        palettes = {

        },
        specs = {},
        groups = {},
      })

      -- setup must be called before loading
      vim.cmd("colorscheme nightfox")
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
