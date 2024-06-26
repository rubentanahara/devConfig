return {
  "marko-cerovac/material.nvim",
  config = function()
    require("material").setup({
      contrast = {
        sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = true, -- Enable contrast for floating windows
        line_numbers = true, -- Enable contrast background for line numbers
        sign_column = true, -- Enable contrast background for the sign column
        cursor_line = true, -- Enable darker background for the cursor line
        non_current_windows = true, -- Enable darker background for non-current windows
        popup_menu = true, -- Enable lighter background for the popup menu
      },

      styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true },
        -- strings = { bold = true },
        keywords = { underline = false },
        functions = { italic = true, undercurl = false },
        variables = {
          italic = false,
          undercurl = false,
          bold = false,
        },
        operators = { bold = false },
        types = { italic = false },
      },

      plugins = { -- Uncomment the plugins that you use to highlight them
        "dap",
        "gitsigns",
        "indent-blankline",
        "nvim-cmp",
        "nvim-navic",
        "nvim-tree",
        "nvim-web-devicons",
        "telescope",
        "trouble",
        "which-key",
      },

      -- disable = {
      --   colored_cursor = false, -- Disable the colored cursor
      --   borders = false, -- Disable borders between verticaly split windows
      --   -- background = true, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
      --   term_colors = false, -- Prevent the theme from setting terminal colors
      --   eob_lines = false, -- Hide the end-of-buffer lines
      -- },

      high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = true, -- Enable higher contrast text for darker style
      },

      lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )

      async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

      custom_colors = nil, -- If you want to everride the default colors, set this to a function
      custom_highlights = {}, -- Overwrite highlights with your own
    })

    -- Set the theme style
    vim.g.material_style = "darker"

    -- Load the colorscheme
    vim.cmd([[colorscheme material]])
  end,
}

-- return {
--   { "ellisonleao/gruvbox.nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }

-- return {
--   -- add gruvbox
--   { "rebelot/kanagawa.nvim" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "kanagawa-dragon",
--     },
--   },
-- }

-- return {
--   "rebelot/kanagawa.nvim",
--   priority = 1000,
--   -- vim.cmd("colorscheme kanagawa"),
-- }

-- return {
--   {
--     "bluz71/vim-nightfly-guicolors",
--     priority = 1000,
--     config = function()
--       --load the colorscheme
--       vim.g.nightflyTransparent = 3
--       vim.cmd([[colorscheme nightfly]])
--     end,
--   },
-- }
--
-- return {
--   {
--     "folke/tokyonight.nvim",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       local bg = "#011628"
--       local bg_dark = "#011423"
--       local bg_highlight = "#143652"
--       local bg_search = "#0A64AC"
--       local bg_visual = "#275378"
--       local fg = "#CBE0F0"
--       local fg_dark = "#B4D0E9"
--       local fg_gutter = "#627E97"
--      local border = "#547998"
--
--       require("tokyonight").setup({
--         style = "night",
--         on_colors = function(colors)
--           colors.bg = bg
--           colors.bg_dark = bg_dark
--           colors.bg_float = bg_dark
--           colors.bg_highlight = bg_highlight
--           colors.bg_popup = bg_dark
--           colors.bg_search = bg_search
--           colors.bg_sidebar = bg_dark
--           colors.bg_statusline = bg_dark
--           colors.bg_visual = bg_visual
--           colors.border = border
--           colors.fg = fg
--           colors.fg_dark = fg_dark
--           colors.fg_float = fg
--           colors.fg_gutter = fg_gutter
--           colors.fg_sidebar = fg_dark
--         end,
--       })
--       -- load the colorscheme here
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }
-- return {
--   {
--     "craftzdog/solarized-osaka.nvim",
--     branch = "osaka",
--     lazy = true,
--     priority = 1000,
--     opts = function()
--       return {
--         transparent = true,
--         vim.cmd([[colorscheme tokyonight]]),
--       }
--     end,
--   },
-- }
