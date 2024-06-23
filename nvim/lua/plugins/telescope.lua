return {
  {
    "folke/flash.nvim",
    enabled = false,
    opts = {
      search = {
        forward = true,
        multi_window = false,
        wrap = false,
        incremental = true,
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "nvim-telescope/telescope-file-browser.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {
        "<leader>fP",
        "<cmd>lua require('telescope.builtin').find_files({ cwd = require('lazy.core.config').options.root })<cr>",
        desc = "Find Plugin File",
      },
      {
        ";f",
        "<cmd>lua require('telescope.builtin').find_files({ no_ignore = false, hidden = true })<cr>",
        desc = "Lists files in your current working directory, respects .gitignore",
      },
      {
        ";r",
        "<cmd>lua require('telescope.builtin').live_grep({ additional_args = { '--hidden' } })<cr>",
        desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore",
      },
      { "\\\\", "<cmd>lua require('telescope.builtin').buffers()<cr>", desc = "Lists open buffers" },
      {
        ";t",
        "<cmd>lua require('telescope.builtin').help_tags()<cr>",
        desc = "Lists available help tags and opens a new window with the relevant help info on <cr>",
      },
      { ";;", "<cmd>lua require('telescope.builtin').resume()<cr>", desc = "Resume the previous telescope picker" },
      {
        ";e",
        "<cmd>lua require('telescope.builtin').diagnostics()<cr>",
        desc = "Lists Diagnostics for all open buffers or a specific buffer",
      },
      {
        ";s",
        "<cmd>lua require('telescope.builtin').treesitter()<cr>",
        desc = "Lists Function names, variables, from Treesitter",
      },
    },
    config = function(opts)
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local fb_actions = require("telescope").extensions.file_browser.actions

      opts.defaults = {
        layout_strategy = "flex",
        path_display = { "smart" },
        wrap_results = true,
        layout_config = { prompt_position = "bottom" },
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = { n = {} },
      }
      opts.pickers = {
        diagnostics = {
          theme = "ivy",
          initial_mode = "normal",
          layout_config = { preview_cutoff = 9999 },
        },
      }
      opts.extensions = {
        file_browser = {
          theme = "dropdown",
          hijack_netrw = true,
          file_ignore_patterns = { "%.git/", "node_modules/" }, -- escaped . character
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
            },
            n = {
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["/"] = function()
                vim.cmd("startinsert")
              end,
              ["<C-u>"] = function(prompt_bufnr)
                for i = 1, 10 do
                  actions.move_selection_previous(prompt_bufnr)
                end
              end,
              ["<C-d>"] = function(prompt_bufnr)
                for i = 1, 10 do
                  actions.move_selection_next(prompt_bufnr)
                end
              end,
              ["<PageUp>"] = actions.preview_scrolling_up,
              ["<PageDown>"] = actions.preview_scrolling_down,
            },
          },
        },
      }
      telescope.setup(opts)
      telescope.load_extension("fzf")
      telescope.load_extension("file_browser")
    end,
  },
}
