return {
  -- add gruvbox
  { "rebelot/kanagawa.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}

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
--       -- vim.g.nightflyTransparent = 3
--       -- vim.cmd([[colorscheme nightfly]])
--     end,
--   },
-- }
